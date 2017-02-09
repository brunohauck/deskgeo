<?php
/* 
 * Generated by CRUDigniter v2.3 Beta 
 * www.crudigniter.com
 */
 
class Iphdr_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get iphdr by sid
     */
    function get_iphdr($sid)
    {
        return $this->db->get_where('iphdr',array('sid'=>$sid))->row_array();
    }
    
    /*
     * Get all iphdr
     */
    function get_all_iphdr()
    {
        return $this->db->get('iphdr')->result_array();
    }
    
    /*
     * function to add new iphdr
     */
    function add_iphdr($params)
    {
        $this->db->insert('iphdr',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update iphdr
     */
    function update_iphdr($sid,$params)
    {
        $this->db->where('sid',$sid);
        $response = $this->db->update('iphdr',$params);
        if($response)
        {
            return "iphdr updated successfully";
        }
        else
        {
            return "Error occuring while updating iphdr";
        }
    }
    
    /*
     * function to delete iphdr
     */
    function delete_iphdr($sid)
    {
        $response = $this->db->delete('iphdr',array('sid'=>$sid));
        if($response)
        {
            return "iphdr deleted successfully";
        }
        else
        {
            return "Error occuring while deleting iphdr";
        }
    }
}