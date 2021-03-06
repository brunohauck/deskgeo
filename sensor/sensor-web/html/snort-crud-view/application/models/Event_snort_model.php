<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Event_snort_model extends CI_Model
{

    public $table = 'event';
    public $id = 'sid';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // get all
    function get_all()
    {
	/*
	$this->db->select('*');    
	$this->db->from($this->table);
	$this->db->join('iphdr', 'event.cid = iphdr.cid');
	$this->db->join('t', 'table1.id = table3.id');
        $this->db->order_by($this->id, $this->order);*/
        return $this->db->query("SELECT event.cid, event.sid, event.signature, 
	iphdr.cid, iphdr.ip_src as ip_src, iphdr.ip_dst as ip_dst, signature.sig_name as sig_name, signature.sig_id, 
	signature.sig_sid, signature.sig_priority
        FROM event
        INNER JOIN iphdr ON event.cid = iphdr.cid
        AND event.sid = iphdr.sid
        INNER JOIN signature ON event.signature = signature.sig_id")->result();
	/*
	SELECT event.cid, event.sid, event.signature, iphdr.cid, iphdr.ip_src, iphdr.ip_dst, signature.sig_name, signature.sig_id, signature.sig_sid, signature.sig_priority
	FROM event
	INNER JOIN iphdr ON event.cid = iphdr.cid
	AND event.sid = iphdr.sid
	INNER JOIN signature ON event.signature = signature.sig_id
	 */
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
    
    // get total rows
    function total_rows($q = NULL) {
        $this->db->like('sid', $q);
	$this->db->or_like('signature', $q);
	$this->db->or_like('timestamp', $q);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->select('event.cid, event.sid as sid, event.signature, event.timestamp, 
        iphdr.cid, iphdr.ip_src as ip_src, iphdr.sid ip_sid, iphdr.ip_dst as ip_dst, signature.sig_name as sig_name, signature.sig_id, 
        signature.sig_sid, signature.sig_priority'); 
	$this->db->join('iphdr', 'event.cid = iphdr.cid','event.sid = iphdr.sid');
	$this->db->join('signature', 'event.signature = signature.sig_id');
	$this->db->order_by($this->id, $this->order);
       // $this->db->like('sid', $q);
	$this->db->or_like('signature', $q);
	$this->db->or_like('timestamp', $q);
	$this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }

}

/* End of file Event_snort_model.php */
/* Location: ./application/models/Event_snort_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2016-12-16 07:29:40 */
/* http://harviacode.com */
