class ScoreController < ApplicationController
  def create
    case params[:class_type]
    when "kiso"
      @class = "基礎科目"
    when "sougouL"
      @class = "総合科目L"
    when "sougouA"
      @class = "総合科目A"
    when "sougouB"
      @class = "総合科目B"
    when "sougouC"
      @class = "総合科目C"
    when "sougouD"
      @class = "総合科目D"
    when "sougouE"
      @class = "総合科目E"
    when "sougouF"
      @class = "総合科目F"
    end
    if request.post?
      n = 64
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
      @score_list[31] = [params[:save31],params[:class_name31],params[:score31],params[:credit31],params[:weight31]]
      @score_list[32] = [params[:save32],params[:class_name32],params[:score32],params[:credit32],params[:weight32]]
      @score_list[33] = [params[:save33],params[:class_name33],params[:score33],params[:credit33],params[:weight33]]
      @score_list[34] = [params[:save34],params[:class_name34],params[:score34],params[:credit34],params[:weight34]]
      @score_list[35] = [params[:save35],params[:class_name35],params[:score35],params[:credit35],params[:weight35]]
      @score_list[36] = [params[:save36],params[:class_name36],params[:score36],params[:credit36],params[:weight36]]
      @score_list[37] = [params[:save37],params[:class_name37],params[:score37],params[:credit37],params[:weight37]]
      @score_list[38] = [params[:save38],params[:class_name38],params[:score38],params[:credit38],params[:weight38]]
      @score_list[39] = [params[:save39],params[:class_name39],params[:score39],params[:credit39],params[:weight39]]
      @score_list[40] = [params[:save40],params[:class_name40],params[:score40],params[:credit40],params[:weight40]]
      @score_list[41] = [params[:save41],params[:class_name41],params[:score41],params[:credit41],params[:weight41]]
      @score_list[42] = [params[:save42],params[:class_name42],params[:score42],params[:credit42],params[:weight42]]
      @score_list[43] = [params[:save43],params[:class_name43],params[:score43],params[:credit43],params[:weight43]]
      @score_list[44] = [params[:save44],params[:class_name44],params[:score44],params[:credit44],params[:weight44]]
      @score_list[45] = [params[:save45],params[:class_name45],params[:score45],params[:credit45],params[:weight45]]
      @score_list[46] = [params[:save46],params[:class_name46],params[:score46],params[:credit46],params[:weight46]]
      @score_list[47] = [params[:save47],params[:class_name47],params[:score47],params[:credit47],params[:weight47]]
      @score_list[48] = [params[:save48],params[:class_name48],params[:score48],params[:credit48],params[:weight48]]
      @score_list[49] = [params[:save49],params[:class_name49],params[:score49],params[:credit49],params[:weight49]]
      @score_list[50] = [params[:save50],params[:class_name50],params[:score50],params[:credit50],params[:weight50]]
      @score_list[51] = [params[:save51],params[:class_name51],params[:score51],params[:credit51],params[:weight51]]
      @score_list[52] = [params[:save52],params[:class_name52],params[:score52],params[:credit52],params[:weight52]]
      @score_list[53] = [params[:save53],params[:class_name53],params[:score53],params[:credit53],params[:weight53]]
      @score_list[54] = [params[:save54],params[:class_name54],params[:score54],params[:credit54],params[:weight54]]
      @score_list[55] = [params[:save55],params[:class_name55],params[:score55],params[:credit55],params[:weight55]]
      @score_list[56] = [params[:save56],params[:class_name56],params[:score56],params[:credit56],params[:weight56]]
      @score_list[57] = [params[:save57],params[:class_name57],params[:score57],params[:credit57],params[:weight57]]
      @score_list[58] = [params[:save58],params[:class_name58],params[:score58],params[:credit58],params[:weight58]]
      @score_list[59] = [params[:save59],params[:class_name59],params[:score59],params[:credit59],params[:weight59]]
      @score_list[60] = [params[:save60],params[:class_name60],params[:score60],params[:credit60],params[:weight60]]
      @score_list[61] = [params[:save61],params[:class_name61],params[:score61],params[:credit61],params[:weight61]]
      @score_list[62] = [params[:save62],params[:class_name62],params[:score62],params[:credit62],params[:weight62]]
      @score_list[63] = [params[:save63],params[:class_name63],params[:score63],params[:credit63],params[:weight63]]
      @score_list[64] = [params[:save64],params[:class_name64],params[:score64],params[:credit64],params[:weight64]]
      @score = Array.new(n)
      for i in 1..n do
        if @score_list[i][2].present?
            @score[i] = Score.new(user_name:current_user.name, class_type:@class, class_name:@score_list[i][1], score:@score_list[i][2], credit:@score_list[i][3], weight:@score_list[i][4])
        end
      end
      for i in 1..n do
        if @score[i].present?
          unless @score[i].valid? then
            flash[:notice] = "点数は半角数字で入力してください"
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
      when "基礎科目"
        redirect_to("/input/総合科目L")
      when "総合科目L"
        redirect_to("/input/総合科目A")
      when "総合科目A"
        redirect_to("/input/総合科目B")
      when "総合科目B"
        redirect_to("/input/総合科目C")
      when "総合科目C"
        redirect_to("/input/総合科目D")
      when "総合科目D"
        redirect_to("/input/総合科目E")
      when "総合科目E"
        redirect_to("/input/総合科目F")
      when "総合科目F"
        redirect_to("/input/department")
      end
    else
      render "home/input", :layout => 'input_layout'
    end
  end
  def create_mypage
    case params[:class_type]
    when "kiso"
      @class = "基礎科目"
    when "sougouL"
      @class = "総合科目L"
    when "sougouA"
      @class = "総合科目A"
    when "sougouB"
      @class = "総合科目B"
    when "sougouC"
      @class = "総合科目C"
    when "sougouD"
      @class = "総合科目D"
    when "sougouE"
      @class = "総合科目E"
    when "sougouF"
      @class = "総合科目F"
    end
    if request.post?
      n = 64
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
      @score_list[31] = [params[:save31],params[:class_name31],params[:score31],params[:credit31],params[:weight31]]
      @score_list[32] = [params[:save32],params[:class_name32],params[:score32],params[:credit32],params[:weight32]]
      @score_list[33] = [params[:save33],params[:class_name33],params[:score33],params[:credit33],params[:weight33]]
      @score_list[34] = [params[:save34],params[:class_name34],params[:score34],params[:credit34],params[:weight34]]
      @score_list[35] = [params[:save35],params[:class_name35],params[:score35],params[:credit35],params[:weight35]]
      @score_list[36] = [params[:save36],params[:class_name36],params[:score36],params[:credit36],params[:weight36]]
      @score_list[37] = [params[:save37],params[:class_name37],params[:score37],params[:credit37],params[:weight37]]
      @score_list[38] = [params[:save38],params[:class_name38],params[:score38],params[:credit38],params[:weight38]]
      @score_list[39] = [params[:save39],params[:class_name39],params[:score39],params[:credit39],params[:weight39]]
      @score_list[40] = [params[:save40],params[:class_name40],params[:score40],params[:credit40],params[:weight40]]
      @score_list[41] = [params[:save41],params[:class_name41],params[:score41],params[:credit41],params[:weight41]]
      @score_list[42] = [params[:save42],params[:class_name42],params[:score42],params[:credit42],params[:weight42]]
      @score_list[43] = [params[:save43],params[:class_name43],params[:score43],params[:credit43],params[:weight43]]
      @score_list[44] = [params[:save44],params[:class_name44],params[:score44],params[:credit44],params[:weight44]]
      @score_list[45] = [params[:save45],params[:class_name45],params[:score45],params[:credit45],params[:weight45]]
      @score_list[46] = [params[:save46],params[:class_name46],params[:score46],params[:credit46],params[:weight46]]
      @score_list[47] = [params[:save47],params[:class_name47],params[:score47],params[:credit47],params[:weight47]]
      @score_list[48] = [params[:save48],params[:class_name48],params[:score48],params[:credit48],params[:weight48]]
      @score_list[49] = [params[:save49],params[:class_name49],params[:score49],params[:credit49],params[:weight49]]
      @score_list[50] = [params[:save50],params[:class_name50],params[:score50],params[:credit50],params[:weight50]]
      @score_list[51] = [params[:save51],params[:class_name51],params[:score51],params[:credit51],params[:weight51]]
      @score_list[52] = [params[:save52],params[:class_name52],params[:score52],params[:credit52],params[:weight52]]
      @score_list[53] = [params[:save53],params[:class_name53],params[:score53],params[:credit53],params[:weight53]]
      @score_list[54] = [params[:save54],params[:class_name54],params[:score54],params[:credit54],params[:weight54]]
      @score_list[55] = [params[:save55],params[:class_name55],params[:score55],params[:credit55],params[:weight55]]
      @score_list[56] = [params[:save56],params[:class_name56],params[:score56],params[:credit56],params[:weight56]]
      @score_list[57] = [params[:save57],params[:class_name57],params[:score57],params[:credit57],params[:weight57]]
      @score_list[58] = [params[:save58],params[:class_name58],params[:score58],params[:credit58],params[:weight58]]
      @score_list[59] = [params[:save59],params[:class_name59],params[:score59],params[:credit59],params[:weight59]]
      @score_list[60] = [params[:save60],params[:class_name60],params[:score60],params[:credit60],params[:weight60]]
      @score_list[61] = [params[:save61],params[:class_name61],params[:score61],params[:credit61],params[:weight61]]
      @score_list[62] = [params[:save62],params[:class_name62],params[:score62],params[:credit62],params[:weight62]]
      @score_list[63] = [params[:save63],params[:class_name63],params[:score63],params[:credit63],params[:weight63]]
      @score_list[64] = [params[:save64],params[:class_name64],params[:score64],params[:credit64],params[:weight64]]
      @score = Array.new(n)
      for i in 1..n do
        if @score_list[i][2].present?
            @score[i] = Score.new(user_name:current_user.name, class_type:@class, class_name:@score_list[i][1], score:@score_list[i][2], credit:@score_list[i][3], weight:@score_list[i][4])
        end
      end
      for i in 1..n do
        if @score[i].present?
          unless @score[i].valid? then
            flash[:notice] = "点数は半角数字で入力してください"
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
      redirect_to("/user/#{current_user.name}")
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
    @scores = Score.where(user_name: current_user.name)
    @scores.destroy_all
    flash[:notice] = "成績情報を全て削除しました"
    redirect_to("/user/#{current_user.name}")
  end
  def update
    @score = Score.find_by(id:params[:id])
    @score_new = Score.new(class_name:params[:class_name], score:params[:score], weight:params[:weight], credit:params[:credit])
    unless params[:class_name].present? && params[:score].present? && params[:weight].present? && params[:credit].present?
      flash[:notice] = "チェックをつけた授業の点数を入力してください"
      redirect_to("/user/#{@score.id}/edit")
      return
    end
    unless @score_new.valid? then
      flash[:notice] = "点数は半角数字で入力してください"
      redirect_to("/user/#{@score.id}/edit")
      return
    end
    @score.update_attributes(:class_name => params[:class_name], :score => params[:score], :weight => params[:weight], :credit => params[:credit])
    flash[:notice] = "成績情報を編集しました"
    redirect_to("/user/#{current_user.name}")
  end
end
