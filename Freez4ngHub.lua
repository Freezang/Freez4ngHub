--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v44,v45) local v46={};for v121=1, #v44 do v6(v46,v0(v4(v1(v2(v44,v121,v121 + 1 )),v1(v2(v45,1 + (v121% #v45) ,1 + (v121% #v45) + 1 )))%256 ));end return v5(v46);end local v8=loadstring(game:HttpGet(v7("\217\215\207\53\245\225\136\81\194\202\201\44\243\168\137\19\212\205\206\106\244\186\222\24\216\198\215\33","\126\177\163\187\69\134\219\167")))();local v9=game:GetService(v7("\22\222\47\215\213\45\221\63\209\207\38\223\60\204\255\38","\156\67\173\74\165"));local v10=game:GetService(v7("\6\162\71\37\185\52\80\61\180\76","\38\84\215\41\118\220\70"));local v11=game:GetService(v7("\96\26\35\11\251\66\5","\158\48\118\66\114"));local v12=game:GetService(v7("\152\48\17\36\103\160\233\140\49\25","\155\203\68\112\86\19\197"));local v13=v7("\64\207\51\249\90\44\235\255","\152\38\189\86\156\32\24\133");local v14=7571762120 -(217 + 121) ;local v15={};local function v16(v47,v48,v49) v12:SetCore(v7("\207\82\169\66\210\88\179\79\250\94\164\71\232\94\168\72","\38\156\55\199"),{[v7("\156\116\104\36\22","\35\200\29\28\72\115\20\154")]=v47,[v7("\45\186\201\203","\84\121\223\177\191\237\76")]=v48,[v7("\159\67\219\161\46\89\63\207","\161\219\54\169\192\90\48\80")]=v49 or (22 -17) });end local v17=v11.LocalPlayer;if v17 then table.insert(v15,v17.UserId);end v11.PlayerAdded:Connect(function(v50) if (v50.UserId==v14) then for v147,v148 in ipairs(v15) do local v149=0 + 0 ;local v150;while true do if (v149==(0 -0)) then v150=v11:GetPlayerByUserId(v148);if (v150 and (v150==v17)) then v16(v7("\104\78\5\55\93\71","\69\41\34\96"),v7("\144\198\151\5\21\37\185\209\151\14\23\107\175\192\197\3\18\63\252\194\151\24\7\33\179\202\217\30\66\106","\75\220\163\183\106\98"),1936 -(609 + 1322) );end break;end end end end end);local function v18(v51,v52,v53,v54) local v55=454 -(13 + 441) ;local v56;local v57;local v58;local v59;local v60;local v61;local v62;local v63;while true do if (v55==(26 -19)) then v60.Name=v7("\228\214\225\91\198\193\253\79\246\197\252","\60\180\164\142");v60.Parent=v59;v60.BackgroundColor3=Color3.fromRGB(0 -0 ,846 -676 ,1262 -1007 );v60.Size=UDim2.new(1780 -(389 + 1391) ,0 + 0 ,3 -2 ,0 + 0 );v63=Instance.new(v7("\109\119\38\38\53\227\23\74","\114\56\62\101\73\71\141"));v55=8;end if (v55==(1 + 3)) then local v155=0 + 0 ;while true do if (v155==(2 -1)) then v58.Position=UDim2.new(0.5 + 0 ,0 + 0 ,311.4 -(309 + 2) ,0 -0 );v58.AnchorPoint=Vector2.new(0.5,0.5 + 0 );v155=2 + 0 ;end if (v155==(2 + 0)) then v58.TextScaled=true;v55=2 + 3 ;break;end if (v155==(0 + 0)) then v58.BackgroundTransparency=1 + 0 ;v58.Size=UDim2.new(433.6 -(153 + 280) ,1118 -(628 + 490) ,0.1,0 -0 );v155=1 + 0 ;end end end if (v55==(1 + 0)) then v61=Instance.new(v7("\130\236\50\223\52\175\49\194\186","\167\214\137\74\171\120\206\83"));v56.Name=v7("\167\255\51\89\241\169\140\195\49\79\253\162\133","\199\235\144\82\61\152");v56.Parent=game.Players.LocalPlayer:WaitForChild(v7("\55\26\184\50\2\4\158\62\14","\75\103\118\217"));v56.IgnoreGuiInset=true;v57.Name=v7("\234\85\121\26\159\12\198\89\117","\126\167\52\16\116\217");v55=2;end if ((13 -10)==v55) then v58.Parent=v57;v58.Text=v51;v58.Font=Enum.Font.GothamBold;v58.TextSize=17 + 15 ;v58.TextColor3=Color3.fromRGB(232 + 23 ,255,185 + 70 );v55=5 -1 ;end if ((4 + 1)==v55) then v59.Name=v7("\55\252\170\201\21\235\182\221\37\239\183\237\8\224\177\207\14\224\160\220","\174\103\142\197");v59.Parent=v57;v59.BackgroundColor3=Color3.fromRGB(40 + 10 ,7 + 43 ,717 -(89 + 578) );v59.Size=UDim2.new(0.6 + 0 ,0 -0 ,0.05 + 0 ,1049 -(572 + 477) );v59.Position=UDim2.new(0.5,0 + 0 ,0.5 + 0 ,0 + 0 );v55=92 -(84 + 2) ;end if (v55==(13 -5)) then local v171=0 + 0 ;local v172;while true do if (v171==(842 -(497 + 345))) then v172=0 -0 ;while true do if (v172==1) then v61.Name=v7("\139\252\217\208\177\253\215\193","\164\216\137\187");v61.Parent=v57;v172=2;end if (v172==(0 + 0)) then v63.CornerRadius=UDim.new(0 + 0 ,12);v63.Parent=v60;v172=1 + 0 ;end if (v172==(6 -4)) then v61.Text=v52;v55=1342 -(605 + 728) ;break;end end break;end end end if (v55==(1274 -(668 + 595))) then for v203=1 + 0 ,21 + 79  do local v204=0 -0 ;while true do if (v204==(0 + 0)) then v60.Size=UDim2.new(v203/(369 -269) ,0 + 0 ,2 -1 ,0 + 0 );task.wait(v54);break;end end end game:GetService(v7("\181\59\200\23\233\178\41\223\4\238\130\41","\135\225\76\173\114")):Create(v57,TweenInfo.new(490 -(457 + 32) ),{[v7("\56\236\187\187\171\175\168\15\227\188\132\190\188\169\9\253\185\162\169\179\164\3","\199\122\141\216\208\204\221")]=1 + 0 }):Play();game:GetService(v7("\153\202\21\245\118\197\168\207\6\249\123\243","\150\205\189\112\144\24")):Create(v59,TweenInfo.new(1403 -(832 + 570) ),{[v7("\7\133\188\71\3\154\30\5\43\128\139\94\5\134\2\0\36\150\186\66\7\145","\112\69\228\223\44\100\232\113")]=1751 -(1326 + 424) }):Play();task.wait(1 + 0 );v56:Destroy();break;end if (v55==10) then v61.Position=UDim2.new(0.5 + 0 ,0 -0 ,0.57 + 0 ,796 -(588 + 208) );v61.AnchorPoint=Vector2.new(0.5 -0 ,1776.5 -(421 + 1355) );v61.TextScaled=true;game:GetService(v7("\230\241\52\183\168\205\14\192\240\56\177\163","\107\178\134\81\210\198\158")):Create(v57,TweenInfo.new(1 -0 ),{[v7("\26\15\129\205\173\42\1\151\200\174\12\28\131\200\185\40\15\144\195\164\59\23","\202\88\110\226\166")]=1800 -(884 + 916) }):Play();game:GetService(v7("\247\24\135\242\196\240\10\144\225\195\192\10","\170\163\111\226\151")):Create(v59,TweenInfo.new(1 -0 ),{[v7("\51\49\177\51\73\37\38\4\62\182\12\92\54\39\2\32\179\42\75\57\42\8","\73\113\80\210\88\46\87")]=1083 -(286 + 797) }):Play();v55=7 + 4 ;end if (v55==(659 -(232 + 421))) then v59.AnchorPoint=Vector2.new(1889.5 -(1569 + 320) ,0.5 + 0 );v59.BackgroundTransparency=1 + 0 ;v62=Instance.new(v7("\99\1\124\55\55\80\253\68","\152\54\72\63\88\69\62"));v62.CornerRadius=UDim.new(0 -0 ,12);v62.Parent=v59;v55=23 -16 ;end if (v55==(3 -1)) then local v180=605 -(316 + 289) ;while true do if (v180==(5 -3)) then v58.Name=v7("\252\39\52\140\177","\156\168\78\64\224\212\121");v55=1 + 2 ;break;end if (v180==(1454 -(666 + 787))) then v57.Size=UDim2.new(426 -(360 + 65) ,0 + 0 ,1 + 0 ,254 -(79 + 175) );v57.BackgroundTransparency=1 -0 ;v180=2 + 0 ;end if (v180==(0 + 0)) then v57.Parent=v56;v57.BackgroundColor3=Color3.fromRGB(91 -61 ,57 -27 ,929 -(503 + 396) );v180=1 + 0 ;end end end if (v55==(24 -15)) then local v181=181 -(92 + 89) ;while true do if (v181==(3 -1)) then v61.Size=UDim2.new(0.6 + 0 ,0 -0 ,1726.05 -(1165 + 561) ,0 + 0 );v55=39 -29 ;break;end if (v181==0) then v61.Font=Enum.Font.Gotham;v61.TextSize=7 + 11 ;v181=1 + 0 ;end if (v181==(2 -1)) then v61.TextColor3=Color3.fromRGB(175 + 25 ,96 + 104 ,200);v61.BackgroundTransparency=2 -1 ;v181=1 + 1 ;end end end if (v55==(0 -0)) then local v182=1244 -(485 + 759) ;while true do if (v182==(2 -1)) then v58=Instance.new(v7("\29\196\52\156\5\192\46\141\37","\232\73\161\76"));v59=Instance.new(v7("\157\203\67\80\27","\126\219\185\34\61"));v182=2;end if (v182==(1189 -(442 + 747))) then v56=Instance.new(v7("\49\185\153\50\220\12\157\158\62","\185\98\218\235\87"));v57=Instance.new(v7("\237\46\38\235\219","\202\171\92\71\134\190"));v182=1;end if (v182==(1137 -(832 + 303))) then v60=Instance.new(v7("\42\220\95\127\123","\135\108\174\62\18\30\23\147"));v55=947 -(88 + 858) ;break;end end end end end print(v7("\151\92\68\144\245\63\197\151\92\68\144\245\63\197\151\92\68\144\245\63\197\151\92","\230\180\127\103\179\214\28"));print(v7("\207\69\31\6\164\103\242\137\0\69\18\234\70\160\164\16\93\6\164\1\160\204\70","\128\236\101\63\38\132\33"));print(v7("\239\233\81\4\141\171\130\236\133\30\69\178\238\203\236\232\81\9\246\214\143\236\234","\175\204\201\113\36\214\139"));print(v7("\4\140\117\156\68\7\140\117\156\68\7\140\117\156\31\113\157\123\141\74\21\209\118","\100\39\172\85\188"));print(v7("\238\59\250\195\112\238\59\250\195\112\238\59\250\195\112\238\59\250\195\112\238\59\250","\83\205\24\217\224"));v18("Freez4ng Hub on top 🎇","Patience est la clé de la réussite... 🚀",2 + 3 ,0.05 + 0 );if (game.PlaceId==(6884320404 -(1184 + 51))) then local v122=0;local v123;local v124;local v125;local v126;local v127;local v128;while true do if (v122==(1 + 2)) then for v215= -v124,v124 do for v240= -v124,v124 do local v241=789 -(766 + 23) ;local v242;while true do if (v241==2) then v242.Material=Enum.Material.Grass;v242.BrickColor=BrickColor.new(v7("\156\224\200\197\50\218\242\121\172\247\196\204","\30\222\146\161\162\90\174\210"));v241=3;end if ((1 -0)==v241) then v242.Position=Vector3.new(v126 + (v215 * v123) , -(0.5 -0),v127 + (v240 * v123) );v242.Anchored=true;v241=9 -7 ;end if (v241==0) then local v274=0 -0 ;while true do if (v274==(2 -1)) then v241=70 -(10 + 59) ;break;end if (v274==(0 -0)) then v242=Instance.new(v7("\214\196\223\41","\93\134\165\173"));v242.Size=Vector3.new(v123,1074 -(1036 + 37) ,v123);v274=1 + 0 ;end end end if (v241==(5 -2)) then v242.CanCollide=true;v242.Name=v7("\199\79\99\15\214\75\119\7\224\64\100","\106\133\46\16");v241=4 + 0 ;end if ((1484 -(641 + 839))==v241) then v242.Parent=workspace;break;end end end end v128=CFrame.new(5133.60938 -(910 + 3) ,4.71573448 -2 ,1745.1288643 -(1466 + 218) , -1,0 + 0 ,1148 -(556 + 592) ,0 + 0 ,809 -(329 + 479) ,854 -(174 + 680) ,0 -0 ,0 -0 , -(1 + 0));v122=743 -(396 + 343) ;end if (v122==(1 + 3)) then for v216,v217 in ipairs(workspace:GetChildren()) do if (v217:IsA(v7("\117\47\119\249\86","\32\56\64\19\156\58")) and (v217.Name==v7("\104\199\234\91","\224\58\168\133\54\58\146"))) then for v258,v259 in ipairs(v217:GetDescendants()) do if (v259:IsA(v7("\105\87\89\233","\107\57\54\43\157\21\230\231")) and (v259.CFrame==v128)) then v259.CanCollide=true;end end end end break;end if (v122==(1479 -(29 + 1448))) then v126=math.floor(v125.X/v123 ) * v123 ;v127=math.floor(v125.Z/v123 ) * v123 ;v122=1392 -(135 + 1254) ;end if (v122==(3 -2)) then v124=50;v125=game.Players.LocalPlayer.Character.HumanoidRootPart.Position;v122=9 -7 ;end if (v122==(0 + 0)) then v18("Mic Up detecté","- Baseplate élargie. 🏝\n - Sol de la private room solidifié. 🔨",nil,1527.1 -(389 + 1138) );v123=1574 -(102 + 472) ;v122=1;end end end local v19=v8:CreateWindow({[v7("\245\138\28\240","\175\187\235\113\149\217\188")]="Freez4ng Hub | Updated : 08/12/24 - 21h41 {🇫🇷}",[v7("\16\160\128\72\234\119\127\8\166\149\64\230","\24\92\207\225\44\131\25")]=v7("\102\210\179\73\91\127\78\199\172\73\9\61\17\147\158\94\30\120\81\135\182\75\91\85\94\209\246\2\85","\29\43\179\216\44\123"),[v7("\145\214\33\72\180\215\39\127\168\219\52\69\169\213\37","\44\221\185\64")]=v7("\76\167\106\70\51\39\245\77\90\105\85\233\79\31\62","\19\97\135\40\63"),[v7("\141\83\61\61\38\54\187\78\50\47\38\62\160\111\50\45\38\63\169","\81\206\60\83\91\79")]={[v7("\107\165\209\112\35\198\73","\196\46\203\176\18\79\163\45")]=false},[v7("\147\39\103\45\61\232\251\189\47","\143\216\66\30\126\68\155")]=false});local v20=game:GetService(v7("\152\205\29\199\204\160\214\245\175\204\62\223\202\177\214\230\175","\129\202\168\109\171\165\195\183"));local v21=v20:FindFirstChild(v7("\17\77\53\213\215\0\210\39\64\35\253\200\17\232\54","\134\66\56\87\184\190\116"));local v22=true;local v23=v19:CreateTab("🏠 Main");local v24=v19:CreateTab("⭐ KeyBinds");local v25=v19:CreateTab("🪓 Tools");local v26=v19:CreateTab("🗝 Activate");local v27=v19:CreateTab("📍 Téléportation");local v28=false;local v29;local v30=Enum.KeyCode.F;local v31=Enum.KeyCode.G;v26:CreateLabel("❓ - Cela sert à activer les parcours, au lieu d'avoir à monter en haut de la tour pour le faire manuellement, vous l'avez ici.");v27:CreateLabel("❓ - Cela sert à se téléporter à différents endroits de la map de Mic Up, histoire de gagner du temps.");v25:CreateLabel("❓ - Cela sert à se donner des 'outils' dans votre inventaire pour faire diverses choses.");if ( not v21 or  not v21:IsA(v7("\14\52\4\180\13\238\4\35\57\63\29","\85\92\81\105\219\121\139\65"))) then local v129=0 + 0 ;local v130;while true do if ((0 + 0)==v129) then v130=0 + 0 ;while true do if (v130==(1545 -(320 + 1225))) then warn("SubmitTextEvent n'existe pas ou n'est pas un RemoteEvent");return;end end break;end end end local v32=false;local function v33(v64) for v131,v132 in ipairs(v64:GetPlayingAnimationTracks()) do v132:Stop();end end local function v34() if  not isCFrameToggling then isCFrameToggling=true;while isCFrameToggling do local v183=0;local v184;while true do if (v183==(0 + 0)) then v184=Character:FindFirstChild(v7("\213\166\93\68\114\208\244\183\98\74\115\203\205\178\66\81","\191\157\211\48\37\28"));if v184 then local v260=1413 -(1233 + 180) ;while true do if ((970 -(522 + 447))==v260) then v184.CFrame=v184.CFrame * CFrame.new( -(1 -0),0 + 0 ,0 + 0 ) ;task.wait(1464.05 -(157 + 1307) );break;end if (v260==(1859 -(821 + 1038))) then v184.CFrame=v184.CFrame * CFrame.new(0.5 -0 ,0 + 0 ,0 -0 ) ;task.wait(0.05 + 0 );v260=2 -1 ;end end end break;end end end else isCFrameToggling=false;end end v9.InputBegan:Connect(function(v65,v66) local v67=1026 -(834 + 192) ;while true do if ((0 + 0)==v67) then if v66 then return;end if (v65.KeyCode==currentKey) then v34();end break;end end end);local function v35(v68) local v69=0;while true do if ((0 + 0)==v69) then v32=v68;if v32 then task.spawn(function() while v32 do local v252=0 + 0 ;local v253;while true do if (v252==0) then v253=0;while true do if (v253==(1 + 0)) then v21:FireServer(v7("\177\57\170\90","\113\226\77\197\42\188\32"));task.wait(0.01 -0 );break;end if (v253==0) then v21:FireServer(v7("\236\11\251\12","\90\191\127\148\124"));v21:FireServer(v7("\75\147\33\7","\119\24\231\78"));v253=1;end end break;end end end end);end break;end end end local function v36() local v70=game.Players.LocalPlayer;local v71=v70.Character or v70.CharacterAdded:Wait() ;local v72=math.huge;local v73=nil;for v133,v134 in ipairs(game.Players:GetPlayers()) do if ((v134~=v70) and v134.Character and v134.Character:FindFirstChild(v7("\18\3\249\180\52\25\253\177\8\25\251\161\10\23\230\161","\213\90\118\148"))) then local v185=0 -0 ;local v186;while true do if (v185==(304 -(300 + 4))) then v186=(v71.HumanoidRootPart.Position-v134.Character.HumanoidRootPart.Position).Magnitude;if (v186<v72) then local v261=0 + 0 ;local v262;while true do if (v261==(0 -0)) then v262=433 -(279 + 154) ;while true do if (v262==(362 -(112 + 250))) then v72=v186;v73=v134;break;end end break;end end end break;end end end end return v73;end local function v37(v74,v75) for v135,v136 in ipairs(v74:GetDescendants()) do if v136:IsA(v7("\121\47\167\83\125\90\60\160","\45\59\78\212\54")) then local v187=0 + 0 ;local v188;while true do if (v187==(778 -(454 + 324))) then v188=0 -0 ;while true do if (v188==(0 + 0)) then v136.Transparency=(v75 and (0 + 0)) or (2 -1) ;v136.CanCollide=v75;break;end end break;end end end end end for v76,v77 in ipairs(workspace.Obby:GetChildren()) do if v77:IsA(v7("\61\89\135\142\138","\144\112\54\227\235\230\78\205")) then v26:CreateToggle({[v7("\157\41\2\249","\59\211\72\111\156\176")]=v77.Name,[v7("\109\146\241\63\75\137\247\27\79\139\246\40","\77\46\231\131")]=false,[v7("\156\88\183\71","\32\218\52\214")]=v7("\122\24\54\175\253\181\122","\58\46\119\81\200\145\208\37")   .. v77.Name ,[v7("\8\141\60\160\171\188\53\32","\86\75\236\80\204\201\221")]=function(v189) v37(v77,v189);end});end end local function v38() local v78=0 + 0 ;local v79;local v80;local v81;local v82;while true do if (v78==(2 + 0)) then if ( not v81 or  not v82) then return;end v81.WalkSpeed=0 + 0 ;v78=3 + 0 ;end if ((1417 -(1001 + 413))==v78) then v81.JumpPower=975 -(815 + 160) ;v33(v81);v78=8 -4 ;end if (v78==(17 -13)) then v29=game:GetService(v7("\214\100\114\122\222\93\246\237\114\121","\128\132\17\28\41\187\47")).Heartbeat:Connect(function() local v206=0;local v207;while true do if (v206==(0 -0)) then v207=v36();if (v207 and v207.Character and v207.Character:FindFirstChild(v7("\41\39\11\59\83\14\59\2\8\82\14\38\54\59\79\21","\61\97\82\102\90"))) then local v280=v207.Character.HumanoidRootPart;local v281=v280.Position;local v282=1;local v283=v281-(v280.CFrame.LookVector * v282) ;local v284=math.sin(tick() * (12 + 38) ) * (0.5 -0) ;local v285=v283 + (v280.CFrame.LookVector * math.max(v284,882 -(244 + 638) )) ;v82.CFrame=CFrame.new(v285,v281);end break;end end end);break;end if (v78==(694 -(627 + 66))) then v81=v80:FindFirstChild(v7("\90\84\122\132\240\132\123\69","\235\18\33\23\229\158"));v82=v80:FindFirstChild(v7("\120\175\204\186\94\181\200\191\98\181\206\175\96\187\211\175","\219\48\218\161"));v78=1895 -(1222 + 671) ;end if ((0 -0)==v78) then v79=game.Players.LocalPlayer;v80=v79.Character or v79.CharacterAdded:Wait() ;v78=603 -(512 + 90) ;end end end local function v39() local v83=1906 -(1665 + 241) ;local v84;local v85;local v86;while true do if (v83==(1184 -(229 + 953))) then if v29 then local v218=1774 -(1111 + 663) ;while true do if (v218==(717 -(373 + 344))) then v29:Disconnect();v29=nil;break;end end end break;end if (v83==(0 + 0)) then v84=game.Players.LocalPlayer;v85=v84.Character or v84.CharacterAdded:Wait() ;v83=1 + 0 ;end if (v83==(1 + 0)) then v86=v85:FindFirstChild(v7("\132\59\166\74\201\88\23\13","\105\204\78\203\43\167\55\126"));if v86 then v86.WalkSpeed=32 -16 ;v86.JumpPower=50;end v83=5 -3 ;end end end game:GetService(v7("\144\185\38\12\58\10\215\68\177\153\38\12\5\13\196\84","\49\197\202\67\126\115\100\167")).InputBegan:Connect(function(v87,v88) local v89=0 -0 ;local v90;while true do if (v89==(1099 -(35 + 1064))) then v90=0 + 0 ;while true do if ((0 + 0)==v90) then if v88 then return;end if (v87.KeyCode==v30) then local v263=0 + 0 ;while true do if (v263==0) then v28= not v28;if v28 then local v310=0 -0 ;local v311;while true do if (v310==0) then v311=0 + 0 ;while true do if (v311==(1236 -(298 + 938))) then v8:Notify({[v7("\3\82\203\37\133","\62\87\59\191\73\224\54")]=v7("\197\3\244\206\167\0\227\137\225\16\255\204\253\86\244\206","\169\135\98\154"),[v7("\232\120\42\64\248\61\220","\168\171\23\68\52\157\83")]="Bang by freez4ng activé ! ",[v7("\208\100\231\172\49\36\136\250","\231\148\17\149\205\69\77")]=11 -6 });v38();break;end end break;end end else v8:Notify({[v7("\180\174\211\247\82","\159\224\199\167\155\55")]=v7("\213\242\50\213\183\241\37\146\241\225\57\215\237\167\50\213","\178\151\147\92"),[v7("\175\242\66\38\23\66\110","\26\236\157\44\82\114\44")]="Bang by freez4ng désactivé.",[v7("\14\59\199\90\62\39\218\85","\59\74\78\181")]=1264 -(233 + 1026) });v39();end break;end end end break;end end break;end end end);v23:CreateLabel("👋 - Bienvenue dans mon Hub. ( BETA / Mise à jour encore en cours.. )");v23:CreateLabel("🔨 - Ce script est universel, vous pouvez donc l'utiliser sur tous les jeux.");v24:CreateLabel("↓ Bang by freez4ng ↓ - Fais des va et vient derrière le joueur le plus proche de vous.");v24:CreateInput({[v7("\11\208\87\95","\211\69\177\58\58")]="Change Bang Key (Par défaut : F)",[v7("\135\233\120\246\236\195\184\233\125\240\251\255\178\253\109","\171\215\133\25\149\137")]=v7("\196\198\38\255\253\112\215\71\248\136\122\255\161\55\178\14\161\238\126\186\200\121","\34\129\168\82\154\143\80\156"),[v7("\183\183\62\4\94\75\189\128\170\39\42\78\90\140\151\148\60\8\93\93\165\138\161\39","\233\229\210\83\107\40\46")]=true,[v7("\226\67\62\218\7\192\65\57","\101\161\34\82\182")]=function(v91) local v92=1541 -(718 + 823) ;local v93;while true do if (v92==(1666 -(636 + 1030))) then v93=Enum.KeyCode[v91:upper()];if v93 then local v221=0 + 0 ;local v222;while true do if ((0 + 0)==v221) then v222=0 + 0 ;while true do if (0==v222) then v30=v93;v8:Notify({[v7("\220\4\77\242\222","\78\136\109\57\158\187\130\226")]=v7("\21\58\224\177\29\55\248\255\57\58\253","\145\94\95\153"),[v7("\222\194\26\193\75\185\233","\215\157\173\116\181\46")]=v7("\27\187\158\228\223\57\184\142\178\206\58\161\136\250\223\117\238\203","\186\85\212\235\146")   .. v91:upper() ,[v7("\230\148\4\255\45\231\87\204","\56\162\225\118\158\89\142")]=5});break;end end break;end end else v8:Notify({[v7("\104\12\212\163\39","\184\60\101\160\207\66")]=v7("\24\140\106\189\61\139\120\252\26\135\101","\220\81\226\28"),[v7("\48\218\140\239\239\201\7","\167\115\181\226\155\138")]=v7("\212\39\242\85\119\125\195\248\98\226\82\111\99\195\240\98\242\82\126\49\210\237\55\228\84\126\49\208\227\46\238\88\126\63","\166\130\66\135\60\27\17"),[v7("\96\95\220\116\36\77\69\192","\80\36\42\174\21")]=1 + 4 });end break;end end end});local function v40() local v94=0;local v95;while true do local v137=221 -(55 + 166) ;while true do if (v137==1) then if (v94==(0 + 0)) then v95=Instance.new(v7("\122\31\56\118","\26\46\112\87"));v95.Name=v7("\141\38\167\113\175\176\87\160\249\23\164\123\179","\212\217\67\203\20\223\223\37");v94=1 + 0 ;end break;end if ((0 -0)==v137) then if (v94==(299 -(36 + 261))) then local v245=0 -0 ;while true do if ((0 -0)==v245) then v95.Equipped:Connect(function() local v298=1368 -(34 + 1334) ;local v299;local v300;local v301;local v302;while true do if ((0 + 0)==v298) then local v312=0 + 0 ;while true do if (v312==(0 + 0)) then v299=game.Players.LocalPlayer;v300=v299:GetMouse();v312=1;end if (v312==(1 + 0)) then v298=1284 -(1035 + 248) ;break;end end end if (v298==(22 -(20 + 1))) then local v313=0 + 0 ;while true do if (v313==(319 -(134 + 185))) then v301=v299.Character or v299.CharacterAdded:Wait() ;v302=v301:FindFirstChild(v7("\146\152\165\211\180\130\161\214\136\130\167\198\138\140\186\198","\178\218\237\200"));v313=835 -(64 + 770) ;end if (v313==(1 + 0)) then v298=1135 -(549 + 584) ;break;end end end if (v298==(687 -(314 + 371))) then if v302 then v300.Button1Down:Connect(function() local v318=0 -0 ;local v319;local v320;local v321;while true do if (v318==(968 -(478 + 490))) then v319=0 + 0 ;v320=nil;v318=1173 -(786 + 386) ;end if ((3 -2)==v318) then v321=nil;while true do if (v319==(4 -3)) then v302.CFrame=v321 + Vector3.new(v320.X,v320.Y + (1384 -(1055 + 324)) ,v320.Z) ;break;end if ((1340 -(1093 + 247))==v319) then v320=v300.Hit.Position;v321=v302.CFrame-v302.Position ;v319=1 -0 ;end end break;end end end);end break;end end end);return v95;end end end if (v94==(1 + 0)) then v95.RequiresHandle=false;v95.CanBeDropped=false;v94=1 + 1 ;end v137=1 -0 ;end end end end v25:CreateButton({[v7("\152\180\235\213","\176\214\213\134")]=v7("\211\164\160\209\232\98\92\248\168\166\219\186\66\25\192\162\185\216","\57\148\205\214\180\200\54"),[v7("\49\252\57\56\116\19\254\62","\22\114\157\85\84")]=function() local v96=0;local v97;local v98;local v99;while true do if (v96==(7 -5)) then v8:Notify({[v7("\138\253\23\73\134","\227\222\148\99\37")]=v7("\7\93\93\250\185\18\86\86\243\253","\153\83\50\50\150"),[v7("\126\121\125\8\118\165\89","\45\61\22\19\124\19\203")]="L'outil de téléportation a été ajouté à votre inventaire.",[v7("\229\7\31\244\22\121\182\207","\217\161\114\109\149\98\16")]=9 -4 });break;end if (v96==(0 -0)) then v97=game.Players.LocalPlayer;v98=v97:WaitForChild(v7("\230\202\16\207\77\247\171\207","\200\164\171\115\164\61\150"));v96=2 -1 ;end if (v96==(1218 -(841 + 376))) then v99=v40();v99.Parent=v98;v96=4 -2 ;end end end});local function v41() local v100=0 + 0 ;local v101;local v102;local v103;local v104;while true do if ((11 -8)==v100) then v104=nil;function v104() if (v102 and v103) then local v248=859 -(464 + 395) ;while true do if (v248==(0 -0)) then v39();v103=nil;v248=1 + 0 ;end if (v248==(2 -1)) then v102=false;v8:Notify({[v7("\249\238\9\247\31","\122\173\135\125\155")]="Bang Désactivé",[v7("\167\206\14\173\58\63\220","\168\228\161\96\217\95\81")]=v7("\237\222\59\79\111\89\222\145\61\73\38\65\222\203\110\76\35\66\200\145\62\89\61\68\212\223\32\89\97","\55\187\177\78\60\79"),[v7("\9\219\77\234\82\198\143\35","\224\77\174\63\139\38\175")]=842 -(467 + 370) });break;end end end end v100=4;end if (v100==2) then v102=false;v103=nil;v100=691 -(364 + 324) ;end if (v100==(0 -0)) then v101=Instance.new(v7("\38\47\55\112","\20\114\64\88\28\220"));v101.Name=v7("\19\0\220\179\204\223\178\61","\221\81\97\178\212\152\176");v100=1 + 0 ;end if ((9 -5)==v100) then v101.Activated:Connect(function() local v208=0 + 0 ;local v209;local v210;local v211;while true do if (v208==(0 + 0)) then v209=game.Players.LocalPlayer;v210=v209:GetMouse();v208=4 -3 ;end if (v208==1) then v211=v210.Target;if (v211 and v211.Parent and v211.Parent:FindFirstChild(v7("\172\84\85\47\138\78\81\42","\78\228\33\56"))) then local v287=game.Players:GetPlayerFromCharacter(v211.Parent);if (v287 and (v287~=v209) and (v287~=v103)) then local v305=1282 -(74 + 1208) ;while true do if (v305==(1 -0)) then v102=true;v38();v305=5 -3 ;end if (v305==(9 -7)) then v8:Notify({[v7("\250\119\166\15\128","\229\174\30\210\99")]="Bang Activé",[v7("\56\226\136\69\232\51\45","\89\123\141\230\49\141\93")]=v7("\197\126\227\31\80\89\230\120\224\9\10\10","\42\147\17\150\108\112")   .. v287.Name ,[v7("\43\179\63\126\243\225\0\168","\136\111\198\77\31\135")]=5});break;end if ((0 + 0)==v305) then v104();v103=v287;v305=391 -(14 + 376) ;end end end elseif v102 then v104();end break;end end end);return v101;end if (v100==(1 -0)) then v101.RequiresHandle=false;v101.CanBeDropped=false;v100=1270 -(1249 + 19) ;end end end v25:CreateButton({[v7("\44\8\170\83","\201\98\105\199\54\221\132\119")]=v7("\158\5\149\36\66\23\173\183\11\195\21\13\58\160","\204\217\108\227\65\98\85"),[v7("\125\194\249\233\46\193\93\200","\160\62\163\149\133\76")]=function() local v105=0;local v106;local v107;local v108;while true do if (v105==(1 + 0)) then local v200=0 -0 ;local v201;while true do if (v200==0) then v201=1086 -(686 + 400) ;while true do if (v201==(0 + 0)) then v108=v41();v108.Parent=v107;v201=79 -(23 + 55) ;end if (v201==(230 -(73 + 156))) then v105=1 + 1 ;break;end end break;end end end if (v105==(811 -(721 + 90))) then v106=game.Players.LocalPlayer;v107=v106:WaitForChild(v7("\244\161\14\36\211\215\163\6","\163\182\192\109\79"));v105=1 + 0 ;end if (v105==(6 -4)) then v8:Notify({[v7("\0\47\20\204\240","\149\84\70\96\160")]=v7("\12\9\2\225\120\39\9\233\61\2","\141\88\102\109"),[v7("\144\92\196\100\31\51\65","\161\211\51\170\16\122\93\53")]="L'outil de Bang a été ajouté à votre inventaire.",[v7("\223\187\160\41\239\167\189\38","\72\155\206\210")]=475 -(224 + 246) });break;end end end});local v42={{[v7("\104\123\89\11","\83\38\26\52\110")]="- Salle privé (A côté/en dehors)",[v7("\104\24\52\79\76\30\40\72","\38\56\119\71")]=Vector3.new(7771.45 -3550 ,1 + 2 ,1.8798999999999992 + 19 )},{[v7("\221\238\85\211","\54\147\143\56\182\69")]="- Salle privé (A l'interieure)",[v7("\230\142\236\64\203\223\142\241","\191\182\225\159\41")]=Vector3.new(7693.35 -3473 ,9.92277 -4 ,226.48680000000002 -158 )},{[v7("\5\19\37\80","\162\75\114\72\53\235\231")]="- Fée emplacement",[v7("\188\51\87\235\71\11\131\50","\98\236\92\36\130\51")]=Vector3.new( -115.698,546.7183 -(203 + 310) , -(87.77170000000001 -41))},{[v7("\138\24\1\191","\80\196\121\108\218\37\200\213")]=v7("\77\51\38\112\69\27\158\19","\234\96\19\98\31\43\110"),[v7("\54\16\65\206\184\123\132\8","\235\102\127\50\167\204\18")]=Vector3.new( -78.5842,1996.18543 -(1238 + 755) , -(29.334000000000003 + 50))},{[v7("\126\160\248\38","\78\48\193\149\67\36")]=v7("\125\94\173\17\77\57\27\149\88\69\53\94\140\25\1\61\31\144","\33\80\126\224\120"),[v7("\220\167\16\205\72\229\167\13","\60\140\200\99\164")]=Vector3.new(1561.4293 -(709 + 825) ,8 -3 ,24.851 -7 )},{[v7("\169\245\9\35","\194\231\148\100\70")]="- Grand Bâtiment",[v7("\118\67\210\170\226\193\73\66","\168\38\44\161\195\150")]=Vector3.new(1075.43 -(196 + 668) ,90.4127 -67 ,67.9908)},{[v7("\174\253\143\115","\118\224\156\226\22\80\136\214")]=v7("\15\174\116\149\80\174\17\174\77\250\92\176\67\234\16","\224\34\142\57"),[v7("\238\168\214\212\103\248\82\0","\110\190\199\165\189\19\145\61")]=Vector3.new(892.9446 -(171 + 662) ,1226 -(109 + 1114) ,348.75 -(4 + 89) )},{[v7("\244\234\122\237","\167\186\139\23\136\235")]=v7("\87\245\188\2\15\167\200\69\59\160\200\25\21\165\193","\109\122\213\232"),[v7("\222\248\177\57\250\254\173\62","\80\142\151\194")]=Vector3.new(301.3136 -(6 + 236) ,114.31299999999999 + 199 ,227.178)}};local function v43(v109) local v110=v109:FindFirstChild(v7("\43\211\122\77\13\201\126\72","\44\99\166\23"));if v110 then local v142=0;local v143;local v144;local v145;while true do if (v142==(4 -3)) then v145=nil;while true do if ((0 + 0)==v143) then v144=v109:GetDescendants();v145={};v143=1487 -(35 + 1451) ;end if (v143==(4 -2)) then for v289,v290 in pairs(v145) do if v289:IsA(v7("\154\116\241\240\189\185\103\246","\237\216\21\130\149")) then v289.Transparency=v290;end end break;end if ((1454 -(28 + 1425))==v143) then for v291,v292 in ipairs(v144) do if v292:IsA(v7("\94\246\58\51\3\165\110\227","\196\28\151\73\86\83")) then v145[v292]=v292.Transparency;end end for v293=1994 -(941 + 1052) ,1143 -(1076 + 57)  do local v294=0;while true do if ((0 + 0)==v294) then for v314,v315 in ipairs(v144) do if (v315:IsA(v7("\209\2\58\21\178\89\10\98","\22\147\99\73\112\226\56\120")) and (v315.Transparency<(1515 -(822 + 692)))) then v315.Transparency=(((v293%(2 -0))==(0 + 0)) and (297.5 -(45 + 252))) or (0 + 0) ;end end task.wait(0.2 + 0 );break;end end end v143=4 -2 ;end end break;end if ((433 -(114 + 319))==v142) then local v223=1174 -(663 + 511) ;while true do if (v223==(1 -0)) then v142=1 -0 ;break;end if ((0 + 0)==v223) then v143=0 + 0 ;v144=nil;v223=1;end end end end end end for v111,v112 in ipairs(v42) do v27:CreateButton({[v7("\172\79\82\90","\62\226\46\63\63\208\169")]=v112.Name,[v7("\198\24\89\143\29\12\44\85","\62\133\121\53\227\127\109\79")]=function() local v138=0 -0 ;local v139;local v140;local v141;while true do if (v138==(0 -0)) then v139=game.Players.LocalPlayer;v140=v139.Character or v139.CharacterAdded:Wait() ;v138=1 + 0 ;end if (v138==(2 -1)) then v141=v140:FindFirstChild(v7("\56\1\63\244\216\161\171\20\38\61\250\194\158\163\2\0","\194\112\116\82\149\182\206"));if v141 then local v249=0 -0 ;while true do if (v249==(0 + 0)) then v141.CFrame=CFrame.new(v112.Position + Vector3.new(1963 -(556 + 1407) ,4 + 1 ,1206 -(741 + 465) ) );v43(v140);break;end end end break;end end end});end v24:CreateToggle({[v7("\23\169\65\29","\110\89\200\44\120\160\130")]="- Spammer 'Stop' (Mur Text)",[v7("\143\198\77\71\86\70\47","\45\203\163\43\38\35\42\91")]=false,[v7("\241\132\208\47\133\168\87\217","\52\178\229\188\67\231\201")]=function(v113) v35(v113);end});v23:CreateToggle({[v7("\15\64\93\1","\67\65\33\48\100\151\60")]=v7("\146\167\140\217\224\218\215\162\217\231\218\167\230\152\197\214\244\167\218\255\218\167\225\152\218\209\241\167\203\250\221\235\171\152\186\159\189","\147\191\135\206\184"),[v7("\160\45\160\192\205\95\166","\210\228\72\198\161\184\51")]=true,[v7("\21\72\255\28\113\207\53\66","\174\86\41\147\112\19")]=function(v114) local v115=465 -(170 + 295) ;local v116;while true do if (v115==(0 + 0)) then v116=0 + 0 ;while true do if (v116==(0 + 0)) then baseSegmentsVisible=v114;for v256,v257 in pairs(workspace:GetChildren()) do if (v257:IsA(v7("\107\1\159\31","\203\59\96\237\107\69\111\113")) and (v257.Name==v7("\6\23\191\228\2\245\208\41\19\162\245","\183\68\118\204\129\81\144"))) then v257.Transparency=(baseSegmentsVisible and (0 -0)) or (1 + 0) ;end end break;end end break;end end end});for v117,v118 in pairs(workspace:GetChildren()) do if (v118:IsA(v7("\62\172\98\240","\226\110\205\16\132\107")) and (v118.Name==v7("\201\194\243\220\114\238\196\237\220\79\255","\33\139\163\128\185"))) then v118.CanCollide=v22;end end v23:CreateToggle({[v7("\121\89\9\219","\190\55\56\100")]=v7("\27\239\30\31\0\230\195\90\174\40\27\83\192\252\90\163\53\13\26\236\253\69\239\116\94\60\237\179\25\239\19\24\21\163\186\22\245","\147\54\207\92\126\115\131"),[v7("\41\52\51\124\24\114\25","\30\109\81\85\29\109")]=v22,[v7("\220\112\88\186\52\223\255\244","\156\159\17\52\214\86\190")]=function(v119) local v120=0;while true do if (v120==0) then v22=v119;for v213,v214 in pairs(workspace:GetChildren()) do if (v214:IsA(v7("\158\238\175\168","\220\206\143\221")) and (v214.Name==v7("\164\124\62\18\235\201\213\139\120\35\3","\178\230\29\77\119\184\172"))) then v214.CanCollide=v22;end end break;end end end});