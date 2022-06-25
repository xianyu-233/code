<%--
  Created by IntelliJ IDEA.
  User: lzp
  Date: 2022/6/14
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测量模式一</title>

    <style type="text/css">
        @import url("Resource/Bootstrap/bootstrap.css");
    </style>
</head>

<body>
<div class="container p-5 my-5 border">
    <div class="container mt-3">
        <div class="container p-5" style="text-align: center" >
            <p>请选择你认识的单词！</p>
        </div>

        <form action='${pageContext.request.contextPath}/result1' method='post'>
            <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check0">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check0" value="1" >${wordsname0}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check1">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check1" value="1">${wordsname1}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check2">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check2" value="1">${wordsname2}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check3">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check3" value="1">${wordsname3}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check4">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check4" value="1">${wordsname4}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check5">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check5" value="1">${wordsname5}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check6">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check6" value="1">${wordsname6}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check7">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check7" value="1">${wordsname7}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check8">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check8" value="1">${wordsname8}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check9">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check9" value="1">${wordsname9}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check10">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check10" value="1">${wordsname10}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check11">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check11" value="1">${wordsname11}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check12">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check12" value="1">${wordsname12}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check13">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check13" value="1">${wordsname13}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check14">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check14" value="1">${wordsname14}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check15">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check15" value="1">${wordsname15}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check16">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check16" value="1">${wordsname16}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check17">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check17" value="1">${wordsname17}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check18">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check18" value="1">${wordsname18}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check19">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check19" value="1">${wordsname19}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check20">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check20" value="1">${wordsname20}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check21">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check21" value="1">${wordsname21}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check22">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check22" value="1">${wordsname22}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check23">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check23" value="1">${wordsname23}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check24">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check24" value="1">${wordsname24}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check25">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check25" value="1">${wordsname25}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check26">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check26" value="1">${wordsname26}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check27">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check27" value="1">${wordsname27}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check28">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check28" value="1">${wordsname28}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check29">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check29" value="1">${wordsname29}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check30">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check30" value="1">${wordsname30}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check31">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check31" value="1">${wordsname31}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check32">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check32" value="1">${wordsname32}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check33">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check33" value="1">${wordsname33}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check34">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check34" value="1">${wordsname34}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check35">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check35" value="1">${wordsname35}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check36">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check36" value="1">${wordsname36}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check37">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check37" value="1">${wordsname37}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check38">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check38" value="1">${wordsname38}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check39">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check39" value="1">${wordsname39}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check40">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check40" value="1">${wordsname40}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check41">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check41" value="1">${wordsname41}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check42">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check42" value="1">${wordsname42}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check43">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check43" value="1">${wordsname43}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check44">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check44" value="1">${wordsname44}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check45">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check45" value="1">${wordsname45}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check46">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check46" value="1">${wordsname46}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check47">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check47" value="1">${wordsname47}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check48">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check48" value="1">${wordsname48}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col">
                    <div class="p-3 border bg-light">
                        <div class="form-check">
                            <label class="form-check-label" for="check49">
                                <input  type="checkbox" onchange="this.nextElementSibling.value = (this.nextElementSibling.value==0)?1:0" class="form-check-input" id="check49" value="1">${wordsname49}
                                <input type="hidden" name="checkbox1" value="0"/>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="container mt-3">
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary btn-block">提交</button>
                    </div>
                </div>

            </div>
        </form>

    </div>
</body>
</html>
