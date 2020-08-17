<!--
  ~ Copyright (c) 2020, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
  ~
  ~ WSO2 Inc. licenses this file to you under the Apache License,
  ~ Version 2.0 (the "License"); you may not use this file except
  ~ in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~ http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing,
  ~ software distributed under the License is distributed on an
  ~ "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  ~ KIND, either express or implied.  See the License for the
  ~ specific language governing permissions and limitations
  ~ under the License.
  -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>OIDC Sample App</title>
    <style>
        html, body {
            height: 100%;
        }
        body {
            flex-direction: column;
            display: flex;
        }
        main {
            flex-shrink: 0;
        }
        main.center-segment {
            margin: auto;
            display: flex;
            align-items: center;
        }
        .element-padding {
            margin: auto;
            padding: 15px;
        }
    </style>
</head>
<body>
<main class="center-segment">
    <div style="text-align: center;">
        <h1>
            OIDC Sample App Log In Page!
        </h1>
        <form method="post" action="/OIDCSampleApp/home.jsp">

            <div class="element-padding">
                <input type="submit" value="log in" style="height: 30px; width: 60px">
            </div>
        </form>

        <div class="element-padding">
            <fieldset>
                <legend>Login with your Claimed OpenID URI</legend>
                <form action="openid" method="post">
                    <div align="center">
                        <input type="text" name="OpenId.ClaimedId" size="30"/> <input type="submit" name="login" value="Login"/>
                    </div>
                </form>
            </fieldset>
        </div>

    </div>
</main>
</body>
</html>