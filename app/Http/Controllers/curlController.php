<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\simple_html_dom;
use App\subcategorie;
use App\product;
class curlController extends Controller
{
    //

	public function get_subcategorie()
	{
		$base = 'https://www.miniprix.ro/barbati/imbracaminte/bluze---camasi?O=OrderByReleaseDateDESC&PS=36';

		$curl = curl_init();
		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($curl, CURLOPT_HEADER, false);
		curl_setopt($curl, CURLOPT_FOLLOWLOCATION, true);
		curl_setopt($curl, CURLOPT_URL, $base);
		curl_setopt($curl, CURLOPT_REFERER, $base);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
		$str = curl_exec($curl);
		curl_close($curl);

// Create a DOM object
		$html_base = new simple_html_dom();
// Load HTML from a string
		$html_base->load($str);
// $html = str_get_html('<ul class="itens-sub">
//                 <li><h5><a href="/femei/imbracaminte?PS=36&O=OrderByReleaseDateDESC">Imbracaminte</a></h5></li>
//                 <li><a href="/femei/imbracaminte/bluze---camasi?PS=36&O=OrderByReleaseDateDESC">Bluze &amp; Camasi</a></li>
//                 <li><a href="/femei/imbracaminte/fuste?PS=36&O=OrderByReleaseDateDESC">Fuste</a></li>
//                 <li><a href="/femei/imbracaminte/jachete-si-paltoane?PS=36&O=OrderByReleaseDateDESC">Jachete &amp; Paltoane</a></li>
//                 <li><a href="/femei/imbracaminte/lenjerie?PS=36&O=OrderByReleaseDateDESC">Lenjerie</a></li>
//                 <li><a href="/femei/imbracaminte/jeans?PS=36&O=OrderByReleaseDateDESC">Jeans</a></li>
//                 <li><a href="/femei/imbracaminte/mamici?PS=36&O=OrderByReleaseDateDESC">Mamici</a></li>
//                 <li><a href="/femei/imbracaminte/pantaloni?PS=36&O=OrderByReleaseDateDESC">Pantaloni</a></li>
//                 <li><a href="/femei/imbracaminte/pantaloni-scurti?PS=36&O=OrderByReleaseDateDESC">Pantaloni Scurti</a></li>
//                 <li><a href="/femei/imbracaminte/pulovere?PS=36&O=OrderByReleaseDateDESC">Pulovere</a></li>
//                 <li><a href="/femei/imbracaminte/rochii?PS=36&O=OrderByReleaseDateDESC">Rochii</a></li>
//                 <li><a href="/femei/imbracaminte/salopete?PS=36&O=OrderByReleaseDateDESC">Salopete</a></li>
//                 <li><a href="/femei/imbracaminte/sport?PS=36&O=OrderByReleaseDateDESC">Sport</a></li>
//                 <li><a href="/femei/imbracaminte/topuri---tricouri?PS=36&O=OrderByReleaseDateDESC">Topuri &amp; Tricouri</a></li>
//                 <li><a href="/femei/imbracaminte/plaja-si-piscina?PS=36&O=OrderByReleaseDateDESC">Plaja &amp; Piscina</a></li>
//             </ul>'); 
// $e = $html->find("li",0);




		$element1=$html_base->find('.itens-sub',2);
		foreach($element1->find('li') as $element2)
		{	

			echo $element2->plaintext.'<br>';
			$s = new subcategorie();
			$s->name = $element2->plaintext;
			$s->id_categorie=5;
			$s->save();

		}


		$html_base->clear(); 
		unset($html_base);
	}


	public function get_product()
	{
		$base = 'https://www.miniprix.ro/barbati/accesorii/cravate-si-papioane?O=OrderByReleaseDateDESC&PS=48';

		$curl = curl_init();
		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
		curl_setopt($curl, CURLOPT_HEADER, false);
		curl_setopt($curl, CURLOPT_FOLLOWLOCATION, true);
		curl_setopt($curl, CURLOPT_URL, $base);
		curl_setopt($curl, CURLOPT_REFERER, $base);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
		$str = curl_exec($curl);
		curl_close($curl);

// Create a DOM object
		$html_base = new simple_html_dom();
// Load HTML from a string
		$html_base->load($str);
// $html = str_get_html('<ul class="itens-sub">
//                 <li><h5><a href="/femei/imbracaminte?PS=36&O=OrderByReleaseDateDESC">Imbracaminte</a></h5></li>
//                 <li><a href="/femei/imbracaminte/bluze---camasi?PS=36&O=OrderByReleaseDateDESC">Bluze &amp; Camasi</a></li>
//                 <li><a href="/femei/imbracaminte/fuste?PS=36&O=OrderByReleaseDateDESC">Fuste</a></li>
//                 <li><a href="/femei/imbracaminte/jachete-si-paltoane?PS=36&O=OrderByReleaseDateDESC">Jachete &amp; Paltoane</a></li>
//                 <li><a href="/femei/imbracaminte/lenjerie?PS=36&O=OrderByReleaseDateDESC">Lenjerie</a></li>
//                 <li><a href="/femei/imbracaminte/jeans?PS=36&O=OrderByReleaseDateDESC">Jeans</a></li>
//                 <li><a href="/femei/imbracaminte/mamici?PS=36&O=OrderByReleaseDateDESC">Mamici</a></li>
//                 <li><a href="/femei/imbracaminte/pantaloni?PS=36&O=OrderByReleaseDateDESC">Pantaloni</a></li>
//                 <li><a href="/femei/imbracaminte/pantaloni-scurti?PS=36&O=OrderByReleaseDateDESC">Pantaloni Scurti</a></li>
//                 <li><a href="/femei/imbracaminte/pulovere?PS=36&O=OrderByReleaseDateDESC">Pulovere</a></li>
//                 <li><a href="/femei/imbracaminte/rochii?PS=36&O=OrderByReleaseDateDESC">Rochii</a></li>
//                 <li><a href="/femei/imbracaminte/salopete?PS=36&O=OrderByReleaseDateDESC">Salopete</a></li>
//                 <li><a href="/femei/imbracaminte/sport?PS=36&O=OrderByReleaseDateDESC">Sport</a></li>
//                 <li><a href="/femei/imbracaminte/topuri---tricouri?PS=36&O=OrderByReleaseDateDESC">Topuri &amp; Tricouri</a></li>
//                 <li><a href="/femei/imbracaminte/plaja-si-piscina?PS=36&O=OrderByReleaseDateDESC">Plaja &amp; Piscina</a></li>
//             </ul>');
// $e = $html->find("li",0);




		foreach($html_base->find('.box-item') as $element1) {

			$name = $element1->find('.product-name',0)->plaintext;
			preg_match('/([0-9]{1,})/',$element1->find('.best-price',0)->plaintext,$priceT);
			$image = $element1->find('img',0)->src;
			$price = (int) $priceT[1];
			echo $name.'--'.$price."<img src='$image'/>".'<br>';

			$product = new product();
 
			$product->name = $name;
			$product->id_subcategorie = 52;
			$product->price = $price;
			$product->image_link = $image;
			$product->save();
		}

		$html_base->clear(); 
		unset($html_base);
	}
}
