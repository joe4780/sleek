<?php

namespace App\Interfaces;

interface PropertyRepositoryInterface
{
    public function get();
    public function getById($id);
    public function add(array $data);
    public function edit(array $data,$id);
    public function delete($id);
}
