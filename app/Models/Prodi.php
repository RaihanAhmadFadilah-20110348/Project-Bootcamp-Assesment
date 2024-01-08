<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as AuthUser;

class Prodi extends AuthUser
{
    use HasFactory;

    protected $table = 'prodi';
    protected $primaryKey = 'id';

    protected $fillable = [
        'prodi',
        'semester',
    ];
}