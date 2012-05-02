import java.util.*;  // StringTokenizer
import java.io.*;    // BufferedReader

public class report_java {
    static BufferedReader in = new BufferedReader(new InputStreamReader(System.in));

    public static void main(String args[]) throws Exception{
	int [] volum = { 0, 0, 0, 0, 0, 0, 0 }; //各アラビア数字の値を入れる配列
	int sum, index;
	char c;
	String roman = null;

	roman = in.readLine(); //標準入力から文字列を取得
	roman = roman.toLowerCase(); //取得した文字列を小文字化

	//左から1文字ずつfor文で取得し、ケース文で対応するアラビア数値に変換
	for ( index = 0; index < roman.length(); index++){
	    c = roman.charAt( index );
	    switch(c){
	    case 'i': //Iを入力された文だけ配列に+=1入れる
		volum[ 0 ] += 1; break;
	    case 'v': //Vを5として配列に足し入れる。また、それ以前にIをカウントしていた場合はその分を引いて配列に足し入れる。
		volum[ 1 ] += 5 - volum[ 0 ];
		volum[ 0 ] = 0; break;
	    case 'x': //Xを10として配列に足し入れる。また、それ以前にIをカウントしていた場合はその分を引いて配列に足し入れる。
		volum[ 2 ] += 10 - volum[ 0 ];
		volum[ 0 ] = 0; break;
	    case 'l': //Lを50として配列に足し入れる。また、それ以前にXをカウントしていた場合はその分を引いて配列に足し入れる。
		volum[ 3 ] += 50 - volum[ 2 ];
		volum[ 2 ] = 0; break;
	    case 'c': //Cを100として配列に足し入れる。また、それ以前にXをカウントしていた場合はその分を引いて配列に足し入れる。
		volum[ 4 ] += 100 - volum[ 2 ];
		volum[ 2 ] = 0; break;
	    case 'd': //Dを500として配列に足し入れる。また、それ以前にCをカウントしていた場合はその分を引いて配列に足し入れる。
		volum[ 5 ] += 500 - volum[ 4 ];
		volum[ 4 ] = 0; break;
	    case 'm': //Mを1000として配列に足し入れる。また、それ以前にCをカウントしていた場合はその分を引いて配列に足し入れる。
		volum[ 6 ] += 1000 - volum[ 4 ];
		volum[ 4 ] = 0; break;
	    }
	}
	sum = 0; //合計を初期化
	for( index = 0; index < volum.length(); index++){
	    sum += volum[ index ]; //アラビア数字に変換したものの合計を計算
	}
	System.out.println( sum ); //合計を標準出力に出力
    }
}

