<?php
 
 namespace App\Models;

 use Illuminate\Database\Eloquent\Factories\HasFactory;
 use Illuminate\Database\Eloquent\Model;
 
 class Article extends Model
 {
     use HasFactory;
 
     // Define the relationship with the Tag model
     public function tags()
     {
         return $this->hasMany(Tag::class);
     }
 }
 