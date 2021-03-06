/*
* Copyright (C) 2018-2019 Shubham Arora <shubhamarora@protonmail.com>
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*
* Authored by: Shubham Arora <shubhamarora@protonmail.com>
*/

namespace App.Utils {

    public class DataUtils {

        public const string[] DATA = {
            "1c","1c-bitrix","a-frame","actionscript","ada","adobe","advancedinstaller","agda","al","alteraquartusii","altium","android","androidstudio","angular","anjuta","ansible","apachecordova","apachehadoop","appbuilder","appceleratortitanium","appcode","appcode+all","appcode+iml","appengine","aptanastudio","arcanist","archive","archives","archlinuxpackages","aspnetcore","assembler","ate","atmelstudio","ats","audio","automationstudio","autotools","autotools+strict","backup","ballerina","basercms","basic","batch","bazaar","bazel","bitrise","bitrix","bittorrent","blackbox","bloop","bluej","bookdown","bower","bricxcc","buck","c","c++","cake","cakephp","cakephp2","cakephp3","calabash","carthage","ceylon","cfwheels","chefcookbook","chocolatey","clean","clion","clion+all","clion+iml","clojure","cloud9","cmake","cocoapods","cocos2dx","cocoscreator","code-java","codeblocks","codecomposerstudio","codeigniter","codeio","codekit","codesniffer","coffeescript","commonlisp","composer","compressed","compressedarchive","compression","concrete5","coq","cordova","craftcms","crashlytics","crbasic","crossbar","crystal","csharp","cuda","cvs","d","dart","darteditor","data","database","datarecovery","dbeaver","delphi","diff","diskimage","django","dm","docfx","docpress","dotfilessh","dotsettings","dreamweaver","dropbox","drupal","drupal7","drupal8","eagle","easybook","eclipse","eiffelstudio","elasticbeanstalk","elisp","elixir","elm","emacs","ember","ensime","episerver","erlang","espresso","executable","exercism","expressionengine","extjs","fancy","fastlane","finale","firebase","flashbuilder","flask","flex","flexbuilder","floobits","flutter","font","fontforge","forcedotcom","forgegradle","fortran","freepascal","fsharp","fuelphp","fusetools","games","gcov","genero4gl","geth","ggts","gis","git","gitbook","go","godot","gpg","gradle","grails","greenfoot","grunt","gwt","haskell","hexo","hol","homeassistant","hsp","hugo","hyperledgercomposer","iar","iar_ewarm","iarembeddedworkbench","idapro","idris","igorpro","images","infer","inforcms","inforcrm","intellij","intellij+all","intellij+iml","ionic3","jabref","java","java-web","jboss","jboss-4-2-3-ga","jboss-6-x","jboss4","jboss6","jdeveloper","jekyll","jenv","jetbrains","jetbrains+all","jetbrains+iml","jigsaw","jmeter","joe","joomla","jspm","julia","jupyternotebook","jupyternotebooks","justcode","kate","kdevelop4","keil","kentico","kicad","kirby2","kobalt","kohana","komodoedit","kotlin","labview","labviewnxg","lamp","laravel","latex","lazarus","leiningen","lemonstand","less","liberosoc","librarian-chef","libreoffice","lilypond","linux","lithium","logtalk","lua","lyx","m2e","macos","magento","magento1","magento2","magic-xpa","matlab","maven","mavensmate","mean","mercurial","mercury","metals","metaprogrammingsystem","meteor","meteorjs","microsoftoffice","mikroc","moban","modelsim","modx","momentics","monodevelop","mplabx","mule","nanoc","nativescript","ncrunch","nesc","netbeans","nette","nikola","nim","ninja","node","notepadpp","nuxt","nuxtjs","nwjs","objective-c","ocaml","octave","octobercms","opa","opencart","opencv","openfoam","openframeworks","openframeworks+visualstudio","oracleforms","osx","otto","packer","particle","patch","pawn","perl","perl6","ph7cms","phalcon","phoenix","phpcodesniffer","phpstorm","phpstorm+all","phpstorm+iml","pimcore","pimcore4","pimcore5","pinegrow","platformio","playframework","plone","polymer","powershell","premake-gmake","prepros","prestashop","processing","progressabl","psoccreator","puppet","puppet-librarian","purebasic","purescript","putty","pvs","pycharm","pycharm+all","pycharm+iml","pydev","python","qml","qooxdoo","qt","qtcreator","r","racket","rails","reactnative","red","redcar","redis","rhodesrhomobile","rider","root","ros","ruby","rubymine","rubymine+all","rubymine+iml","rust","salesforce","salesforcedx","sas","sass","sbt","scala","scheme","scons","scrivener","sdcc","seamgen","senchatouch","serverless","shopware","silverstripe","sketchup","slickedit","smalltalk","snap","snapcraft","solidity","soliditytruffle","sonar","sonarqube","sourcepawn","splunk","spreadsheet","standardml","stata","stdlib","stella","stellar","stylus","sublimetext","sugarcrm","svn","swift","swiftpackagemanager","swiftpm","symfony","symphonycms","synology","synopsysvcs","tags","tarmainstallmate","terraform","test","testcomplete","testinfra","tex","text","textmate","textpattern","theos-tweak","thinkphp","tortoisegit","tower","turbogears2","typings","typo3","typo3-composer","umbraco","unity","unrealengine","vaadin","vagrant","valgrind","vapor","venv","vertx","video","vim","virtualenv","virtuoso","visualstudio","visualstudiocode","vivado","vlab","vue","vuejs","vvvv","waf","wakanda","web","webmethods","webstorm","webstorm+all","webstorm+iml","werckercli","windows","wintersmith","wordpress","wyam","xamarinstudio","xcode","xcodeinjection","xilinx","xilinxise","xilinxvivado","xill","xojo","xtext","y86","yeoman","yii","yii2","zendframework","zephir","zig","zukencr8000"
        };

        public static string[] generate_data_set () {
            Soup.Session session = new Soup.Session ();
            string[] output = {};
            string uri = "https://www.gitignore.io/api/list";
            var message = new Soup.Message ("GET", uri);

            session.queue_message (message, (sess, mess) => {
                if (mess.status_code == 200) {
                        string response = (string) mess.response_body.flatten ().data;
                        string response_s = response.replace ("\n", ",");
                        output = response_s.split (",");
                } else {
                    debug ("Internet is required to use gitignore. Please check your network connection.");
                }
            });

            return output;
        }
    }
}