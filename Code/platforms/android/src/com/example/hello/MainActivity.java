/*
       Licensed to the Apache Software Foundation (ASF) under one
       or more contributor license agreements.  See the NOTICE file
       distributed with this work for additional information
       regarding copyright ownership.  The ASF licenses this file
       to you under the Apache License, Version 2.0 (the
       "License"); you may not use this file except in compliance
       with the License.  You may obtain a copy of the License at

         http://www.apache.org/licenses/LICENSE-2.0

       Unless required by applicable law or agreed to in writing,
       software distributed under the License is distributed on an
       "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
       KIND, either express or implied.  See the License for the
       specific language governing permissions and limitations
       under the License.
 */

package com.example.hello;

import android.os.Bundle;
import android.util.Log;
import android.webkit.WebView;
import android.widget.Toast;
import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import org.apache.cordova.*;
import org.json.JSONException;
import org.json.JSONObject;

public class MainActivity extends CordovaActivity
{
	
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
       super.onCreate(savedInstanceState);

	    BitXClient client = new BitXClient("ggyecy8p8du9", "ybwjj1uCtwBnTnwQTfzG2KhTgzQMxZEW1Gx0bW0advY");
	    client.balance(

                new Callback<BalanceList>() {
                    @Override
                    public void success(BalanceList balanceList, Response response) {
                    	Log.e("Balance", responseBodyInputStreamToString(response));
						//Toast.makeText(getApplicationContext(), "Balance fetched balance is "+balanceList.balance.get(1).balance+" "+balanceList.balance.get(1).asset, Toast.LENGTH_LONG).show();
						
                    	 loadUrl("javascript:localStorage.cust_balance='"
                    	       		+  balanceList.balance.get(1).balance+"( "+balanceList.balance.get(1).asset+" )"
                    	       		+ "';");
//                    	 loadUrl("javascript:localStorage.asset='"
//                 	       		+  balanceList.balance.get(0).asset+""
//                 	       		+ "';");
                    }

                    @Override
                    public void failure(RetrofitError error) {
                        //handleFailure(error);
                    }
                });
	    
       
//      
      // Set by <content src="index.html" /> in config.xml
      
        loadUrl(launchUrl);
       // super.appView.sendJavascript("javascript:var data='temp';");
        
//        WebView wV = (WebView)appView.getEngine().getView();
//        wV.addJavascriptInterface(mc, "MyCls");
//        wV.addJavascriptInterface(new WebAppInterface(this), "MyCls");
    }
    protected String responseBodyInputStreamToString(Response response) {
        StringBuilder sb = new StringBuilder();
        BufferedReader br = null;
        try {
            br = new BufferedReader(new InputStreamReader(response.getBody().in()));
            String line;
            while ((line = br.readLine()) != null) {
                sb.append(line);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                try {
                    br.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        String prettyJson = sb.toString();
        try {
            prettyJson = new JSONObject(sb.toString()).toString(2);
        } catch (JSONException je) {
            je.printStackTrace();
        }
        return prettyJson;
    }
}
