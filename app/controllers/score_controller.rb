class ScoreController < ApplicationController
  def create
    case params[:class_type]
    when "hisshuu"
      @class = "必修科目"
    when "kiso"
      @class = "基礎科目"
    when "sougouL"
      @class  = "総合科目L"
    when "sougouABC"
      @class = "総合科目ABC"
    when "sougouDEF"
      @class = "総合科目DEF"
    when "sougouEX"
      @class = "その他の総合科目"
    end
    if request.post?
      n = 30
      @score_list = []
      @score_list[1] = [params[:save1],params[:class_name1],params[:score1],params[:credit1],params[:weight1]]
      @score_list[2] = [params[:save2],params[:class_name2],params[:score2],params[:credit2],params[:weight2]]
      @score_list[3] = [params[:save3],params[:class_name3],params[:score3],params[:credit3],params[:weight3]]
      @score_list[4] = [params[:save4],params[:class_name4],params[:score4],params[:credit4],params[:weight4]]
      @score_list[5] = [params[:save5],params[:class_name5],params[:score5],params[:credit5],params[:weight5]]
      @score_list[6] = [params[:save6],params[:class_name6],params[:score6],params[:credit6],params[:weight6]]
      @score_list[7] = [params[:save7],params[:class_name7],params[:score7],params[:credit7],params[:weight7]]
      @score_list[8] = [params[:save8],params[:class_name8],params[:score8],params[:credit8],params[:weight8]]
      @score_list[9] = [params[:save9],params[:class_name9],params[:score9],params[:credit9],params[:weight9]]
      @score_list[10] = [params[:save10],params[:class_name10],params[:score10],params[:credit10],params[:weight10]]
      @score_list[11] = [params[:save11],params[:class_name11],params[:score11],params[:credit11],params[:weight11]]
      @score_list[12] = [params[:save12],params[:class_name12],params[:score12],params[:credit12],params[:weight12]]
      @score_list[13] = [params[:save13],params[:class_name13],params[:score13],params[:credit13],params[:weight13]]
      @score_list[14] = [params[:save14],params[:class_name14],params[:score14],params[:credit14],params[:weight14]]
      @score_list[15] = [params[:save15],params[:class_name15],params[:score15],params[:credit15],params[:weight15]]
      @score_list[16] = [params[:save16],params[:class_name16],params[:score16],params[:credit16],params[:weight16]]
      @score_list[17] = [params[:save17],params[:class_name17],params[:score17],params[:credit17],params[:weight17]]
      @score_list[18] = [params[:save18],params[:class_name18],params[:score18],params[:credit18],params[:weight18]]
      @score_list[19] = [params[:save19],params[:class_name19],params[:score19],params[:credit19],params[:weight19]]
      @score_list[20] = [params[:save20],params[:class_name20],params[:score20],params[:credit20],params[:weight20]]
      @score_list[21] = [params[:save21],params[:class_name21],params[:score21],params[:credit21],params[:weight21]]
      @score_list[22] = [params[:save22],params[:class_name22],params[:score22],params[:credit22],params[:weight22]]
      @score_list[23] = [params[:save23],params[:class_name23],params[:score23],params[:credit23],params[:weight23]]
      @score_list[24] = [params[:save24],params[:class_name24],params[:score24],params[:credit24],params[:weight24]]
      @score_list[25] = [params[:save25],params[:class_name25],params[:score25],params[:credit25],params[:weight25]]
      @score_list[26] = [params[:save26],params[:class_name26],params[:score26],params[:credit26],params[:weight26]]
      @score_list[27] = [params[:save27],params[:class_name27],params[:score27],params[:credit27],params[:weight27]]
      @score_list[28] = [params[:save28],params[:class_name28],params[:score28],params[:credit28],params[:weight28]]
      @score_list[29] = [params[:save29],params[:class_name29],params[:score29],params[:credit29],params[:weight29]]
      @score_list[30] = [params[:save30],params[:class_name30],params[:score30],params[:credit30],params[:weight30]]
      @score = Array.new(n)
      for i in 1..n do
        if @score_list[i][0].present?
          if @score_list[i][1].present? && @score_list[i][2].present? && @score_list[i][3].present? && @score_list[i][4].present?
            @score[i] = Score.new(user_name:@current_user.name, class_type:@class, class_name:@score_list[i][1], score:@score_list[i][2], credit:@score_list[i][3], weight:@score_list[i][4])
          else
            flash[:notice] = "チェックをつけた成績データを全て入力してください"
            case params[:class_type]
            when "hisshuu"
              @class = "必修科目"
              render "home/input", :layout => 'input_layout'
              return
            when "kiso"
              @class = "基礎科目"
              render "home/input", :layout => 'input_layout'
              return
            when "sougouL"
              @class = "総合科目L"
              render "home/input", :layout => 'input_layout'
              return
            when "sougouABC"
              @class = "総合科目ABC"
              render "home/input", :layout => 'input_layout'
              return
            when "sougouDEF"
              @class = "総合科目DEF"
              render "home/input", :layout => 'input_layout'
              return
            when "sougouEX"
              @class = "その他の総合科目"
              render "home/input", :layout => 'input_layout'
              return
            end
          end
        else
          next
        end
      end
      for i in 1..n do
        if @score[i].present?
          unless @score[i].valid? then
            flash[:notice] = "授業名以外は半角数字で入力してください"
            render "home/input", :layout => 'input_layout'
            return
          end
        end
      end
      j = 0
      for i in 1..n do
        if @score[i].present?
          @score[i].save
          j = 1
        end
      end
      if j == 1
        flash[:notice] = @class + "の成績を保存しました"
      else
        flash[:notice] = @class + "の成績は入力されませんでした"
      end
      case @class
      when "必修科目"
        redirect_to("/input/基礎科目")
      when "基礎科目"
        redirect_to("/input/総合科目L")
      when "総合科目L"
        redirect_to("/input/総合科目ABC")
      when "総合科目ABC"
        redirect_to("/input/総合科目DEF")
      when "総合科目DEF"
        redirect_to("/input/その他の総合科目")
      when "その他の総合科目"
        redirect_to("/result")
      end
    else
      render "home/input", :layout => 'input_layout'
    end
  end
  def create_mypage
    case params[:class_type]
    when "hisshuu"
      @class = "必修科目"
    when "kiso"
      @class = "基礎科目"
    when "sougouL"
      @class  = "総合科目L"
    when "sougouABC"
      @class = "総合科目ABC"
    when "sougouDEF"
      @class = "総合科目DEF"
    when "sougouEX"
      @class = "その他の総合科目"
    end
    if request.post?
      n = 30
      @score_list = []
      @score_list[1] = [params[:save1],params[:class_name1],params[:score1],params[:credit1],params[:weight1]]
      @score_list[2] = [params[:save2],params[:class_name2],params[:score2],params[:credit2],params[:weight2]]
      @score_list[3] = [params[:save3],params[:class_name3],params[:score3],params[:credit3],params[:weight3]]
      @score_list[4] = [params[:save4],params[:class_name4],params[:score4],params[:credit4],params[:weight4]]
      @score_list[5] = [params[:save5],params[:class_name5],params[:score5],params[:credit5],params[:weight5]]
      @score_list[6] = [params[:save6],params[:class_name6],params[:score6],params[:credit6],params[:weight6]]
      @score_list[7] = [params[:save7],params[:class_name7],params[:score7],params[:credit7],params[:weight7]]
      @score_list[8] = [params[:save8],params[:class_name8],params[:score8],params[:credit8],params[:weight8]]
      @score_list[9] = [params[:save9],params[:class_name9],params[:score9],params[:credit9],params[:weight9]]
      @score_list[10] = [params[:save10],params[:class_name10],params[:score10],params[:credit10],params[:weight10]]
      @score_list[11] = [params[:save11],params[:class_name11],params[:score11],params[:credit11],params[:weight11]]
      @score_list[12] = [params[:save12],params[:class_name12],params[:score12],params[:credit12],params[:weight12]]
      @score_list[13] = [params[:save13],params[:class_name13],params[:score13],params[:credit13],params[:weight13]]
      @score_list[14] = [params[:save14],params[:class_name14],params[:score14],params[:credit14],params[:weight14]]
      @score_list[15] = [params[:save15],params[:class_name15],params[:score15],params[:credit15],params[:weight15]]
      @score_list[16] = [params[:save16],params[:class_name16],params[:score16],params[:credit16],params[:weight16]]
      @score_list[17] = [params[:save17],params[:class_name17],params[:score17],params[:credit17],params[:weight17]]
      @score_list[18] = [params[:save18],params[:class_name18],params[:score18],params[:credit18],params[:weight18]]
      @score_list[19] = [params[:save19],params[:class_name19],params[:score19],params[:credit19],params[:weight19]]
      @score_list[20] = [params[:save20],params[:class_name20],params[:score20],params[:credit20],params[:weight20]]
      @score_list[21] = [params[:save21],params[:class_name21],params[:score21],params[:credit21],params[:weight21]]
      @score_list[22] = [params[:save22],params[:class_name22],params[:score22],params[:credit22],params[:weight22]]
      @score_list[23] = [params[:save23],params[:class_name23],params[:score23],params[:credit23],params[:weight23]]
      @score_list[24] = [params[:save24],params[:class_name24],params[:score24],params[:credit24],params[:weight24]]
      @score_list[25] = [params[:save25],params[:class_name25],params[:score25],params[:credit25],params[:weight25]]
      @score_list[26] = [params[:save26],params[:class_name26],params[:score26],params[:credit26],params[:weight26]]
      @score_list[27] = [params[:save27],params[:class_name27],params[:score27],params[:credit27],params[:weight27]]
      @score_list[28] = [params[:save28],params[:class_name28],params[:score28],params[:credit28],params[:weight28]]
      @score_list[29] = [params[:save29],params[:class_name29],params[:score29],params[:credit29],params[:weight29]]
      @score_list[30] = [params[:save30],params[:class_name30],params[:score30],params[:credit30],params[:weight30]]
      @score = Array.new(n)
      for i in 1..n do
        if @score_list[i][0].present?
          if @score_list[i][1].present? && @score_list[i][2].present? && @score_list[i][3].present? && @score_list[i][4].present?
            @score[i] = Score.new(user_name:@current_user.name, class_type:@class, class_name:@score_list[i][1], score:@score_list[i][2], credit:@score_list[i][3], weight:@score_list[i][4])
          else
            flash[:notice] = "チェックをつけた成績データを全て入力してください"
            case params[:class_type]
            when "hisshuu"
              @class = "必修科目"
              render "user/add"
              return
            when "kiso"
              @class = "基礎科目"
              render "user/add"
              return
            when "sougouL"
              @class = "総合科目L"
              render "user/add"
              return
            when "sougouABC"
              @class = "総合科目ABC"
              render "user/add"
              return
            when "sougouDEF"
              @class = "総合科目DEF"
              render "user/add"
              return
            when "sougouEX"
              @class = "その他の総合科目"
              render "user/add"
              return
            end
          end
        else
          next
        end
      end
      for i in 1..n do
        if @score[i].present?
          unless @score[i].valid? then
            flash[:notice] = "授業名以外は半角数字で入力してください"
            render "user/add"
            return
          end
        end
      end
      for i in 1..n do
        if @score[i].present?
          if @score[i].credit == 0
            flash[:notice] = "単位数が0の授業は入力しないでください"
            render "user/add"
            return
          end
        end
      end
      for i in 1..n do
        if @score[i].present?
          if @score[i].weight == 0
            flash[:notice] = "重率が0の授業は入力しないでください"
            render "user/add"
            return
          end
        end
      end
      j = 0
      for i in 1..n do
        if @score[i].present?
          @score[i].save
          j = 1
        end
      end
      if j == 1
        flash[:notice] = @class + "の成績を保存しました"
      else
        flash[:notice] = @class + "の成績は入力されませんでした"
      end
      redirect_to("/user/#{@current_user.name}")
    else
      render "user/add"
    end
  end
  def destroy
    @score = Score.find_by(id:params[:id])
    @score.destroy
    flash[:notice] = "成績情報を削除しました"
    redirect_to("/user/#{@score.user_name}")
  end
  def destroy_all
    @scores = Score.where(user_name: @current_user.name)
    @scores.destroy_all
    flash[:notice] = "成績情報を全て削除しました"
    redirect_to("/user/#{@current_user.name}")
  end
  def update
    @score = Score.find_by(id:params[:id])
    @score_new = Score.new(class_name:params[:class_name], score:params[:score], weight:params[:weight], credit:params[:credit])
    unless params[:class_name].present? && params[:score].present? && params[:weight].present? && params[:credit].present?
      flash[:notice] = "成績データを全て入力してください"
      redirect_to("/user/#{@score.id}/edit")
      return
    end
    unless @score_new.valid? then
      flash[:notice] = "授業名以外は半角数字で入力してください"
      redirect_to("/user/#{@score.id}/edit")
      return
    end
    @score.update_attributes(:class_name => params[:class_name], :score => params[:score], :weight => params[:weight], :credit => params[:credit])
    flash[:notice] = "成績情報を編集しました"
    redirect_to("/user/#{@current_user.name}")
  end
end
