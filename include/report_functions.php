<?php 
    class Report_functions {
		
		private $basic_obj;

		public function initialize(Basic_Functions $basic_obj) {
			$this->basic_obj = $basic_obj;
		}
		public function connect() {
			$db = new db();

			$con = $db->connect();
			return $con;
		}

		public function getOrderFormReport($bill_company_id,$filter_party_id,$from_date, $to_date,$cancel_bill_btn) { 
			$list = $params = array(); $select_query = ""; $where = ""; 

			$bill_company_id = $GLOBALS['bill_company_id'];
			
			if(!empty($bill_company_id)) {
				$where = "bill_company_id = :bill_company_id";
				$params['bill_company_id'] = $bill_company_id;
			}

			if(!empty($filter_party_id)) {
				if(!empty($where)) {
					$where = $where." AND party_id = :filter_party_id";
				}
				else {
					$where = "party_id = :filter_party_id";
				}
				$params['filter_party_id'] = $filter_party_id;

			}
			
			if(!empty($from_date)) {
				$from_date = date("Y-m-d", strtotime($from_date));
				if(!empty($where)) {
					$where = $where." AND order_form_date >= :from_date"; 
				}
				else {
					$where = "order_form_date >= :from_date";
				}
				$params['from_date'] = $from_date;
			}
			
			if(!empty($to_date)) {
				$to_date = date("Y-m-d", strtotime($to_date));
				if(!empty($where)) {
					$where = $where." AND order_form_date <= :to_date"; 	
				}
				else {
					$where = "order_form_date <= :to_date";
				}
				$params['to_date'] = $to_date;
			}

			if(empty($cancel_bill_btn)) {   
				if(!empty($where)) {
					$where .= " AND cancelled = :cancelled";
				} else {
					$where = "cancelled = :cancelled";
				}
				$params['cancelled'] = 0;
			}

			$select_query = "";
			if(!empty($where)) {
				$select_query = "SELECT * FROM ".$GLOBALS['order_form_table']."  WHERE ".$where." ORDER BY created_date_time ASC";
			} else {
				$select_query = "SELECT * FROM ".$GLOBALS['order_form_table']." ORDER BY created_date_time ASC";
			}

			if(!empty($select_query)) {
				$list = $this->basic_obj->getQueryRecords('', $select_query,$params);
			}
			return $list;
		} 

		public function getSalesBillReport($bill_company_id,$filter_party_id,$from_date, $to_date,$view_type,$cancel_bill_btn) {
			$list = array(); $select_query = ""; $where = ""; $params = array();

			if(!empty($bill_company_id)) {
				$where = "bill_company_id = :bill_company_id";
				$params['bill_company_id'] = $bill_company_id;
			}

			if(!empty($filter_party_id)) {
				if(!empty($where)) {
					$where = $where." AND party_id = :party_id";
				}
				else {
					$where = "party_id = :party_id";
				}
				$params['party_id'] = $filter_party_id;
			}
			
			if(!empty($from_date)) {
				$from_date = date("Y-m-d", strtotime($from_date));
				if(!empty($where)) {
					$where = $where." AND bill_date >= :from_date";
				}
				else {
					$where = "bill_date >= :from_date";
				}
				$params['from_date'] = $from_date;
			}
			
			if(!empty($to_date)) {
				$to_date = date("Y-m-d", strtotime($to_date));
				if(!empty($where)) {
					$where = $where." AND bill_date <= :to_date";
				}
				else {
					$where = "bill_date <= :to_date";
				}
				$params['to_date'] = $to_date;
			}

			if(!empty($view_type)) {
				if(!empty($where)) {
					$where = $where." AND type = :type";
				}
				else {
					$where = "type = :type";
				}
				$params['type'] = $view_type;
			}

			if(empty($cancel_bill_btn)) {   
				if(!empty($where)) {
					$where .= " AND cancelled = :cancelled";
				} else {
					$where = "cancelled = :cancelled";
				}
				$params['cancelled'] = 0;
			}

			
			$select_query = "";
			if(!empty($where) ) {

				$select_query = "SELECT bill_id,bill_company_id,bill_number,bill_date,party_id,amount,party_details,cancelled,type FROM (

				SELECT 
					est.estimate_id AS bill_id,
					est.bill_company_id,
					est.estimate_number AS bill_number,
					est.estimate_date AS bill_date,
					est.party_id,
					est.total_amount AS amount,
					est.party_details,
					est.cancelled,
					'estimate' AS type
					FROM ".$GLOBALS['estimate_table']." AS est 
					WHERE est.deleted = '0' 
				UNION ALL
                
				SELECT 
					inv.invoice_id AS bill_id,
					inv.bill_company_id,
					inv.invoice_number AS bill_number,
					inv.invoice_date AS bill_date,
					inv.party_id,
					inv.total_amount AS amount,
					inv.party_details,
					inv.cancelled,
					'invoice' AS type
					FROM ".$GLOBALS['invoice_table']." AS inv 
					WHERE inv.deleted = '0' 
				
				) AS g WHERE ".$where." ORDER BY bill_date DESC";
			}
			if(!empty($select_query)) {
				$list = $this->basic_obj->getQueryRecords('', $select_query,$params);
				
			}
			return $list;
		}

		public function GetSalesTaxReportList($from_date, $to_date, $party_id) {
            $select_query = ""; $list = array(); $where = ""; $params = array();

			$bill_company_id = $GLOBALS['bill_company_id'];
			
			if(!empty($bill_company_id)) {
				$where = "bill_company_id = :bill_company_id";
				$params['bill_company_id'] = $bill_company_id;
			}

            if (!empty($from_date) && $from_date != "0000-00-00") {
                $from_date = date('Y-m-d', strtotime($from_date));
                if (!empty($where)) {
                    $where .= " AND DATE(invoice_date) >= :from_date";
                } else {
                    $where = "DATE(invoice_date) >= :from_date";
                }
                $params[':from_date'] = $from_date;
            }

            if (!empty($to_date) && $to_date != "0000-00-00") {
                $to_date = date('Y-m-d', strtotime($to_date));
                if (!empty($where)) {
                    $where .= " AND DATE(invoice_date) <= :to_date";
                } else {
                    $where = "DATE(invoice_date) <= :to_date";
                }
                $params[':to_date'] = $to_date;
            }

            if (!empty($party_id)) {
                if (!empty($where)) {
                    $where .= " AND party_id = :party_id";
                } else {
                    $where = "party_id = :party_id";
                }
                $params[':party_id'] = $party_id;
            }

			if (!empty($where)) {
                $where .= " AND gst_option = :gst_option";
            } else {
                $where = "gst_option = :gst_option";
            }
            $params[':gst_option'] = 1;


            if (!empty($where)) {
                $where .= " AND deleted = :deleted";
            } else {
                $where = "deleted = :deleted";
            }
            $params[':deleted'] = 0;

            $select_query = "SELECT * FROM {$GLOBALS['invoice_table']} WHERE $where  ORDER BY id DESC";
			// echo $select_query;
			// print_r($params);
            
            $list = $this->basic_obj->getQueryRecords('', $select_query, $params);

            return $list;
        }

		 function getSalesStockReportList($party_id,$product_id) {
            $select_query = ""; $list = array(); $where = ""; $params = array();


            if(!empty($party_id)) {
                if(!empty($where)) {
                    $where = $where." party_id = :party_id AND ";
                }
                else {
                    $where = " party_id = :party_id AND ";
                }
                $params['party_id'] = $party_id;
            }

            if(!empty($product_id)) {
                if(!empty($where)) {
                    $where = $where." product_id = :product_id AND ";
                }
                else {
                    $where = " product_id = :product_id AND ";
                }
                $params['product_id'] = $product_id;
            }

            $params[':deleted'] = 0;
            if(!empty($where)) {
             $select_query = "SELECT DISTINCT product_id FROM ".$GLOBALS['stock_table']." WHERE ".$where." deleted = :deleted ORDER BY id ASC";    
            }
            else{
                $select_query = "SELECT DISTINCT product_id FROM ".$GLOBALS['stock_table']." WHERE deleted = :deleted ORDER BY id ASC";
            }
            if(!empty($select_query)) {
                $list = $this->basic_obj->getQueryRecords($GLOBALS['stock_table'], $select_query, $params);
            }
            return $list;

        }

		function getSalesDetailStockReportList($from_date, $to_date,$filter_party_id,$filter_product_id,$filter_size_id,$filter_unit_id) {
            $select_query = ""; $list = array(); $where = ""; $params = array();
            if(!empty($from_date)) {
                $from_date = date("Y-m-d", strtotime($from_date));
                if(!empty($where)) {
                    $where = $where." stock_date >= :from_date AND ";
                }
                else {
                    $where = " stock_date >= :from_date AND ";
                }
                $params['from_date'] = $from_date;
            }
            if(!empty($to_date)) {
                $to_date = date("Y-m-d", strtotime($to_date));
                if(!empty($where)) {
                    $where = $where." stock_date <= :to_date AND ";
                }
                else {
                    $where = " stock_date <= :to_date AND ";
                }
                $params['to_date'] = $to_date;
            }
            if(!empty($filter_size_id)) {
                if(!empty($where)) {
                    $where = $where." size_id = :size_id AND ";
                }
                else {
                    $where = " size_id = :size_id AND ";
                }
                $params['size_id'] = $filter_size_id;
            }
			if(!empty($filter_party_id)) {
                if(!empty($where)) {
                    $where = $where." party_id = :party_id AND ";
                }
                else {
                    $where = " party_id = :party_id AND ";
                }
                $params['party_id'] = $filter_party_id;
            }

            if(!empty($filter_unit_id)) {
                if(!empty($where)) {
                    $where = $where." unit_id = :unit_id AND ";
                }
                else {
                    $where = " unit_id = :unit_id AND ";
                }
                $params['unit_id'] = $filter_unit_id;
            }

            if(!empty($filter_product_id)) {
                if(!empty($where)) {
                    $where = $where." product_id = :product_id AND ";
                }
                else {
                    $where = " product_id = :product_id AND ";
                }
                $params['product_id'] = $filter_product_id;
            }
            
            $params[':deleted'] = 0;
            if(!empty($where)) {
                $select_query = "SELECT * FROM ".$GLOBALS['stock_table']." WHERE ".$where." deleted = :deleted ORDER BY id ASC";    
            }
            else{
                $select_query = "SELECT * FROM ".$GLOBALS['stock_table']." WHERE deleted = :deleted ORDER BY id ASC";
            }
            if(!empty($select_query)) {
                $list = $this->basic_obj->getQueryRecords($GLOBALS['stock_table'], $select_query, $params);
            }
            return $list;

        }


    }
?>