#! /usr/bin/env bash

for theme in '' '-purple' '-pink' '-red' '-orange' '-yellow' '-green' '-teal' '-grey'; do
  for type in '' '-nord' '-dracula'; do
    case "$theme" in
      '')
        theme_color_dark='#3c84f7'
        theme_color_light='#5b9bf8'
        ;;
      -purple)
        theme_color_dark='#AB47BC'
        theme_color_light='#BA68C8'
        ;;
      -pink)
        theme_color_dark='#EC407A'
        theme_color_light='#F06292'
        ;;
      -red)
        theme_color_dark='#E53935'
        theme_color_light='#F44336'
        ;;
      -orange)
        theme_color_dark='#F57C00'
        theme_color_light='#FB8C00'
        ;;
      -yellow)
        theme_color_dark='#FBC02D'
        theme_color_light='#FFD600'
        ;;
      -green)
        theme_color_dark='#4CAF50'
        theme_color_light='#66BB6A'
        ;;
      -teal)
        theme_color_dark='#009688'
        theme_color_light='#4DB6AC'
        ;;
      -grey)
        theme_color_dark='#464646'
        theme_color_light='#DDDDDD'
        ;;
    esac

    if [[ "$type" == '-nord' ]]; then
      case "$theme" in
        '')
          theme_color_dark='#5e81ac'
          theme_color_light='#89a3c2'
          ;;
        -purple)
          theme_color_dark='#b57daa'
          theme_color_light='#c89dbf'
          ;;
        -pink)
          theme_color_dark='#cd7092'
          theme_color_light='#dc98b1'
          ;;
        -red)
          theme_color_dark='#c35b65'
          theme_color_light='#d4878f'
          ;;
        -orange)
          theme_color_dark='#d0846c'
          theme_color_light='#dca493'
          ;;
        -yellow)
          theme_color_dark='#e4b558'
          theme_color_light='#eac985'
          ;;
        -green)
          theme_color_dark='#82ac5d'
          theme_color_light='#a0c082'
          ;;
        -teal)
          theme_color_dark='#63a6a5'
          theme_color_light='#83b9b8'
          ;;
        -grey)
          theme_color_dark='#3a4150'
          theme_color_light='#d9dce3'
          ;;
      esac
    fi

    if [[ "$type" == '-dracula' ]]; then
      case "$theme" in
        '')
          theme_color_dark='#a679ec'
          theme_color_light='#bd93f9'
          ;;
        -purple)
          theme_color_dark='#a679ec'
          theme_color_light='#bd93f9'
          ;;
        -pink)
          theme_color_dark='#f04cab'
          theme_color_light='#ff79c6'
          ;;
        -red)
          theme_color_dark='#f44d4d'
          theme_color_light='#ff5555'
          ;;
        -orange)
          theme_color_dark='#f8a854'
          theme_color_light='#ffb86c'
          ;;
        -yellow)
          theme_color_dark='#e8f467'
          theme_color_light='#f1fa8c'
          ;;
        -green)
          theme_color_dark='#4be772'
          theme_color_light='#50fa7b'
          ;;
        -teal)
          theme_color_dark='#20eed9'
          theme_color_light='#50fae9'
          ;;
        -grey)
          theme_color_dark='#3c3f51'
          theme_color_light='#d9dae3'
          ;;
      esac
    fi

    if [[ "$type" != '' ]]; then
      rm -rf "theme${theme}${type}"
      cp -rf "theme" "theme${theme}${type}"
      sed -i "s/#3c84f7/${theme_color_dark}/g" "theme${theme}${type}"/*.svg
      sed -i "s/#5b9bf8/${theme_color_light}/g" "theme${theme}${type}"/*.svg
    elif [[ "$theme" != '' ]]; then
      rm -rf "theme${theme}"
      cp -rf "theme" "theme${theme}"
      sed -i "s/#3c84f7/${theme_color_dark}/g" "theme${theme}"/*.svg
      sed -i "s/#5b9bf8/${theme_color_light}/g" "theme${theme}"/*.svg
    fi
  done
done

echo -e "DONE!"
