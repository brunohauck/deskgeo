<?php
/* 
 * Generated by CRUDigniter v2.3 Beta 
 * www.crudigniter.com
 */
 
class Icmphdr_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get icmphdr by sid
     */
    function get_icmphdr($sid)
    {
        return $this->db->get_where('icmphdr',array('sid'=>$sid))->row_array();
    }
    
    /*
     * Get all icmphdr
     */
    function get_all_icmphdr()
    {
        return $this->db->get('icmphdr')->result_array();
    }
    
    /*
     * function to add new icmphdr
     */
    function add_icmphdr($params)
    {
        $this->db->insert('icmphdr',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update icmphdr
     */
    function update_icmphdr($sid,$params)
    {
        $this->db->where('sid',$sid);
        $response = $this->db->update('icmphdr',$params);
        if($response)
        {
            return "icmphdr updated successfully";
        }
        else
        {
            return "Error occuring while updating icmphdr";
        }
    }
    
    /*
     * function to delete icmphdr
     */
    function delete_icmphdr($sid)
    {
        $response = $this->db->delete('icmphdr',array('sid'=>$sid));
        if($response)
        {
            return "icmphdr deleted successfully";
        }
        else
        {
            return "Error occuring while deleting icmphdr";
        }
    }
}
