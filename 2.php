<?php 

function is_name_valid($name___)
{
  if(preg_match("/^([A-Z]{3,20})$/", $name___))
    {
      return true;
    }
    else
    {
        return false;
    }
}

// Format Nama: minimal 3 huruf dan harus huruf kapital semuanya
// Format Umur: 2 digit angka
// Format Username: merupakan kombinasi dari 4 huruf kecil lalu diikuti underscore/garis bawah “_” atau titik “.” dan 3 digit angka

function is_age_valid($age___)
{
    if(preg_match("/^[0-9]{1,2}[:.,-]$/", $age___))
    // ^[0-9]{1,2}[:.,-]?$
    {
        return true;
    }
    else
    {
        return false;
    }
}

function is_username_valid($username__) 
{
	 if(preg_match("/^([a-zA-Z0-9.]{4,}+)([a-zA-Z0-9_\-\.]+)\.([a-z]{2,5})$/", $username__))
    { 		
        return true; 	
        }
        else
    {
        return false;
        } 		 	
} 


echo is_name_valid("NANDAR"); //Data Valid | return true
echo is_name_valid("nandar"); //Data Tidak Valid | return true 
echo is_age_valid(22); //Data Valid | return true
echo is_age_valid(222); //Data Tidak Valid | return true
echo is_username_valid("Nandar_21"); //Data Valid | return true
echo is_username_valid("nandar"); //Data Tidak Valid | return false
?>