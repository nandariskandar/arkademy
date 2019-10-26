<?php

$biodata = new \stdClass();
$biodata->name ="Nandar Iskandar"; // string
$biodata->age = 22; // number
$biodata->address = "Jln. Cibaduyut Lama RT01 RW07 No.52 Kota Bandung"; // string
$biodata->hobbies = ["futsal", "Explorer"]; // array
$biodata->is_marriage = false; // boolean


class School
{
    public $name;
    public $year_in;
    public $year_out;
    public $major;
}

        $ps = new School();
        $ps->name = "SD AL-BASYARIAH";
        $ps->year_in = 2003;
        $ps->year_out = 2009;
        $ps->major = NULL;

        $jhs = new School();
        $jhs->name = "SMPN 39 BANDUNG";
        $jhs->year_in = 2009;
        $jhs->year_out = 2012;
        $jhs->major = NULL;

        $vhs = new School();
        $vhs->name = "SMKN 3 BANDUNG";
        $vhs->year_in = 2012;
        $vhs->year_out = 2015;
        $vhs->major = "MULTIMEDIA";

        $univ = new School();
        $univ->name = "STT BANDUNG";
        $univ->year_in = 2015;
        $univ->year_out = 2019;
        $univ->major = "TEKNK INFORMATIKA";

    $biodata->list_school = [$ps, $jhs, $vhs, $univ];  // array of object

class Skill
{
    public $skill_name;
    public $level;
}

$skill1 = new Skill();
$skill1->skill_name = "Graphic Design";
$skill1->level = "Expert";

$skill2 = new Skill();
$skill2->skill_name = "Networking";
$skill2->level = "Advanced";

$skill3 = new Skill();
$skill3->skill_name = "Programming";
$skill3->level = "Beginner";

$skill4 = new SKill();
$skill4->skill_name = "MySQLi";
$skill4->level = "Beginner";

$biodata->skills = [$skill1, $skill2, $skill3, $skill4];  // array of object

$biodata->interest_in_coding = true; // boolean

$returnJSON = json_encode($biodata);

echo $returnJSON;
?>
