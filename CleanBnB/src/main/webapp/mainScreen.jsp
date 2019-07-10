<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>원하는 서비스 선택</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://unpkg.com/jquery"></script>
        <script src="https://surveyjs.azureedge.net/1.0.96/survey.jquery.js"></script>
        <link href="https://surveyjs.azureedge.net/1.0.96/survey.css" type="text/css" rel="stylesheet"/>
       <!--  <link rel="stylesheet" href="./index.css">  -->
        <style type='text/css'>
        </style>

    </head>
    <body>
    
    <div>
    <div><a href="#">CleanBnB</a>
    <span>받은요청</span>
    <span>채팅</span></div>
    <div>
	        <h3>CleanBnB가 딱 맞는 청소서비스를 제공합니다.</h3></hr>
	     
	     <!-- Search form -->
     <form class="form-inline md-form form-sm mt-0">
     <i class="fas fa-search" aria-hidden="true"></i>
     <input class="form-control form-control-sm ml-3 w-75" type="text" placeholder="원하는 서비스 검색"
    aria-label="Search">
</form>  
        </div>    
    
        <div id="surveyElement"></div>
            
        <div id="surveyResult"></div>

        <script type="text/javascript"> 
        
       

        Survey.StylesManager.applyTheme("default");

        var json = {
            "elements": [
            	           	
            	
            	{
                    "type": "imagepicker",
                    "name": "choosepicture",
                    "title": "어떤 청소서비스를 원하십니까 ?",
                    "choices": [
                        {
                            "value": "Refrigerator",
                            "imageLink": "http://cfile218.uf.daum.net/image/18620F3F5048137835C9CD"
                        }, {
                            "value": "AirConditioner",
                            "imageLink": "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8PDw8NDw8PDQ8NDw0NDQ8NDw8NDQ8NFREWFhURFRUYHSggGBolGxUVITEhJSktLi4uFx8zODMtNygtLisBCgoKDg0OFQ8PFysdFR0rKysrKy0rLS0rNysrLSsrLSs3KystKystLSsrKysrKysrKysrKy0rLSsrKysrKysrK//AABEIAOAA4AMBIgACEQEDEQH/xAAcAAEBAQADAQEBAAAAAAAAAAAABQQBAwYCCAf/xABGEAACAQICBAgIDQMDBQAAAAAAAQIDEQQhBRIxcQY0QVFhcrLRExUiMjNSkcEUJUJUYoGCkpShscLSU5PwFiMkQ1Vkg7P/xAAVAQEBAAAAAAAAAAAAAAAAAAAAAf/EABYRAQEBAAAAAAAAAAAAAAAAAAARAf/aAAwDAQACEQMRAD8A/t4AAAHS6vlOK+Ta++1wJWO0hiHJqhC8U7KWre/Td5ETGYjTW2m4rofwX3nrKhjrxvzrcB4yppnhBSzdGnWS+jRn+UJJnouBvCieNdShiKLw2JopTlBxnGM6bdtaKlmrPJrPajsrInV606b14ScZK9mtu4g9oDFojGOtRjOStLzZW2OVlmvabSgAAAAAAAAAAAAAAAAAAAAAAAAAABkj6Spvj2EazJD0lTfHsID6qGLEUr53ksvkycV+R0aX01Ci/BxXhKuSsk2lJ7I5ZuX0VmYHLGyzaVPolOMXbdFPp2vm6bBqqxtlm97bZKxyyZ81dIVqXpo3jleV04rK/nJZLku0MRVjOGvF3TX1p2vZkHo+DHF/tvsxKxJ4M8XXW/bErFAAAAAAAAAAAAAAAAAAAAAAAAAAACZja/g1Xmtqtq9ZwSRTIumoNwrrncf/AJ7n+j3MDFwewKUPhc1rVa2s4OSleFJvkvmnLa/qN9YaMknhsO1s8DRX1qCT5Xyp8r3nFYCdiUQKFPwVWVBeZUi3TXNb5K3P8n0F/EESvniaKW1Rqyezzcvf+gHr+DPF/tPsxKxK4Neg+07fdiVQB1Vq6gm2nlu/zlOx9Bn8BN+dNP7LXvA+FpGHNL2w7z6+HR9Wb3Jd5z8GfrL7r7zh4Rva4vfFv3gcPHxW2M1vS7x4wj6snucO85WEtscVui+8PDPnXsfeB8vSMOaXth3nMcfF7Ize5J+848A+dex951yodV74vvA7HpCK2xmt6S94WkYcz5eWHNvOpUrbNVbk17xqPo9j7wOzxlDmfthf9T6WPi81Go90V3nSobvY+8+XST2qL+y+8DXSxcZXspK23WVhLG01JU3JKcvNjdazyvkr8xljC2zVjuTXvObS237V/wBQN0Kl+RrefZhpuaazTXKrPP67m4AAAAAAGGpSU5VYP5VlfmeorM3GWHpKm+PYQHmMHjnhKk8NX8ml5dWE/k03fyk/oO6afJd8myvOSktaLUk9ji1KL+tGrSOj6VeOrUjfKUVJZTSe1J+485X4J01fUm43u/lRe1bbPPYBzpTG06K8uXlPzYLOpJ80Y8pLwlOb8JiKi1ZTVoxunqR5Fvzu+kp4bQFGi9a2tLlfK97d308m1nGNSSaSskrJLJAX+DXF11n2YlUlcGuLrrPsxKoA6sTiI04TqTaUYRcpNtJJLpeR2M8zwyxk4aNx86UnCpTwmIqU5R86M4Qck17AN9PhPgpNL4RRV+WVWlFLf5R3+PsF88wv4ij/ACPy7HhJjrr40x342vz9YR4S47L40x+btx2v0fSEH6i8e4P53hfxFH+R8vTmE+d4X8RR/kfl/wD1NjrJ+NMdt+e1/wCQfCbHZ/GmOyaXHa3T9LoA/Tr01hPnWF/EUf5GXEY3BTes8ZSWWr/t47wa5eSM0r57T82vhNjs/jTHZf8Am1ufrD/U2Oz+NMdsT45W6PpdIg/SlDSGDppqOLou7v8A7mMjVd7c8pu247PG2F+dYb8RS7z8z/6nx3/dMb5rfHK3N1guE+Oy+M8bmm+OVed/S6BB+mPG2F+dYb8RR7x41wvzrDf36PefmePCfHeT8Z43N243V6PpBcJ8da/jPGbfndTo+kB+laumcLHV/wCRQlrSUfIr0Xq5N6z8rZlb60cR03hm0lWpeU0latQebdvXPzZDhdjU7eMcXK72vF1f5GzRPCnHVcVhqMcdiZOricNSSeJqTT16kY5puz27AP04o5mk61HM7AAAAAAAZYekqb49hGowVqyputUeyFnv8hZAc4/G06KvUla/mpZyluRElp+M/R03JXtda0uW2eqml7eR8zOjR2CeLlPFYi8oOTjTpuyjO3K+eC2KOx2d0+WxVyVlklkklZJdCAkQ0zTm9WS1HlyuVsr5qyay6DqxrTTad01dNZpo7dI4eFRWmr22PZKLttT5NpGws5xc8PN6zitaEvWXI/rs01zrpzD2fBri66z7MSqSuDXF11v2xKoAyVNHU2mvKV+aUn+TNYAjPQi5I02uql+VgtCr1KfsXcWQBHWho+pT9i7jnxPH1KfsXcVwBJ8Tx9Sl7F3DxRH1KX3Y9xWAEpaJj/Tpfdj3HK0TH+nS+5HuKgAmeKo/06P3Idw8Vx/p0f7cO4pgCctGR/p0f7cP4n3S0dBNNwpqzTWrThe++2RuAHCicgAAAAAAAi6bvqV7bbx2bfM6O57mWibi6PhPDQVm3ayexvUWXu+sDp0ZFLDYdRtbwNJ5atruCbeWW1vYcVjDoLHKzwk3apS1vB6zzqUr9qOxrc+XLdWAnYgiYjLE0HytVE+leS/8/wAtaxUkk22kkm23kkuchYafhKksQvRwi40nmtbnlnzu31ID2fBr0H2n2YlUlcGeLrrPsxKoAAAAAAAAAAAAAAAAAAAAAAAAAAADJH0lTfHsI1mSPpKm+PYQEvTmgo171IS8FV1ZRUlkm3byrrOLyWaJFShpKmrKoqm22vCE3a6+Vk9l9vKeumZaoHk5aJr1WniarlFNPUSjCnfb5sdud9vMuU7sVBRhqrYl7SxXJOO2MD0HBni66z7MSsSeDPF11n2YlYAAAAAAAAAAAAAAAAAAAAAAAAAAABkj6Spvj2EazFn4SpZrbHam/kLpA7JmWqd89bnj91/yMtbW54/dfeBjrknHbGU6+tzx+6+8lY29nmvY+8aPScGeLrrPsxKxJ4MX+DrrPo+TErAAAAAAAAAAAAAAAAAAAAAAAAAAAAMa9JU3x7CNhi/6lTfHsID6mZaxpmZKzAw12SsY8mU67JWLeTA9PwZ4uut+2JVJXBni6637YlUAAAAAAAAAAAAAAAAAAAAAAAAAAABhfpJ749hG4wS9JPfHsID6qMx1maqjMddgYK7JeL2Mo12TMS8mB6vg1xddZ9mJVJXBri6637YlUAAAAAAAAAAAAAAAAAAAAAAAAAAABPqeknvj2EUCfU9JPfHsIBUZhrs2VXkYK7AwV2TsS8mb67J2IeTA9dwa4uus+zEqkrg1xddZ9lFUAAAAAAAAAAAAAAAAAAAAAAAAAAABPqeknvj2EUCdV9JPeuwgPiqYMQzbWZPxDAwV2T6+xm2szDX2MD2PBni6637UVSTwY4uus/0RWAAAAAAAAAAAAAAAAAAAAAAAAAAAATa3pJ712EUibX9JPeuwgOqqybiGUaxNxAGCszDX2G2sYq+wD2PBd/8AGXWf6IrEjgrxZdZ/oiuAAAAAAAAAAAAAAAAAAAAAAAAAAAAk1asHVmlJNpq/3UvcysTa+ik23CSjrZtSTfLyNNP23A6ayJ+IibXoV+tJdSpJe465aEl61Z/+6XeQRq0TDiFZZ5b3Y9G+D19vhPtV5W/U+ocGYbWo/W5T7gNPBXi0VdN3crLak0rfoWDNgsHGirR5bJ8isuRI0lAAAAAAAAAAAAAAAAAAAAAAAAH/2Q=="
                        }, {
                            "value": "Washer",
                            "imageLink": "https://www.costco.co.kr/medias/sys_master/images/h6e/h3a/10311928250398.jpg"
                        }
                    ]
                }
            ]
        };

        window.survey = new Survey.Model(json);

        survey.onComplete.add(function (result) {
           document.querySelector('#surveyResult').textContent = "Result JSON:\n" + JSON.stringify(result.data, null, 3);
            });

        $("#surveyElement").Survey({model: survey});;
        
        </script>
	</div>
   </body>
</html>