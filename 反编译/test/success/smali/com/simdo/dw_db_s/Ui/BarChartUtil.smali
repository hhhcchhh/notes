.class public Lcom/simdo/dw_db_s/Ui/BarChartUtil;
.super Ljava/lang/Object;
.source "BarChartUtil.java"


# instance fields
.field private addCount:I

.field private isMove:Z

.field private final mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

.field private mBarData:Lcom/github/mikephil/charting/data/BarData;

.field private final mBarDataSetArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/BarDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private showIndex:I

.field private final timeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final xAxis:Lcom/github/mikephil/charting/components/XAxis;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->addCount:I

    .line 24
    iput v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->showIndex:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->timeList:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarDataSetArrayList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->isMove:Z

    .line 32
    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 33
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p1

    iput-object p1, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->xAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 34
    invoke-direct {p0}, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->initBarChart()V

    return-void
.end method

.method private initBarChart()V
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDoubleTapToZoomEnabled(Z)V

    .line 43
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 45
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const-string v3, "\u6682\u65e0\u6570\u636e"

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setNoDataText(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 49
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 50
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setExtraOffsets(FFFF)V

    .line 51
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v4, v3, v3}, Lcom/github/mikephil/charting/charts/BarChart;->zoom(FFFF)V

    .line 54
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setDragEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setHighlightPerDragEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setDragDecelerationEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDragDecelerationFrictionCoef(F)V

    .line 58
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 60
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawBorders(Z)V

    .line 62
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setBorderColor(I)V

    .line 66
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 67
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendForm;->SQUARE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V

    .line 68
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->TOP:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V

    .line 69
    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V

    .line 70
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->xAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->timeList:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v0}, Lcom/github/mikephil/charting/data/BarData;-><init>()V

    iput-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarData:Lcom/github/mikephil/charting/data/BarData;

    .line 84
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    return-void
.end method


# virtual methods
.method public addBarDataSet(Ljava/lang/String;I)V
    .locals 5

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xf

    if-ge v1, v2, :cond_0

    .line 97
    new-instance v2, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v3, v1

    const v4, -0x3b864000    # -999.0f

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    new-instance v1, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-direct {v1, v0, p1}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, p2}, Lcom/github/mikephil/charting/data/BarDataSet;->setColor(I)V

    const/high16 p1, 0x41000000    # 8.0f

    .line 101
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/BarDataSet;->setValueTextSize(F)V

    const/4 p1, 0x1

    .line 102
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 103
    invoke-virtual {v1, p2}, Lcom/github/mikephil/charting/data/BarDataSet;->setValueTextColor(I)V

    const p1, -0x777778

    .line 104
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/data/BarDataSet;->setValueTextColor(I)V

    .line 106
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/data/BarData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 107
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarDataSetArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEntry(IF)V
    .locals 2

    .line 117
    new-instance v0, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarDataSetArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarDataSet;->getEntryCount()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, p2}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    .line 118
    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {p2, v0, p1}, Lcom/github/mikephil/charting/data/BarData;->addEntry(Lcom/github/mikephil/charting/data/Entry;I)V

    .line 123
    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarData:Lcom/github/mikephil/charting/data/BarData;

    const v0, 0x3f7ae148    # 0.98f

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    .line 127
    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarData;->notifyDataChanged()V

    .line 128
    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/BarChart;->notifyDataSetChanged()V

    .line 130
    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibleXRangeMaximum(F)V

    .line 132
    iget-boolean p2, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->isMove:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarDataSetArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarDataSet;->getEntryCount()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/charts/BarChart;->moveViewToX(F)V

    :cond_0
    return-void
.end method

.method public addTime(Ljava/lang/String;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->timeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->timeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->timeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget p1, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->addCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->addCount:I

    return-void
.end method

.method public setEnabledMove(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->isMove:Z

    return-void
.end method

.method public setLineShow(IZ)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 161
    :cond_0
    iput p1, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->showIndex:I

    .line 162
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarData:Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    invoke-interface {p1, p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->setVisible(Z)V

    .line 163
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    return-void
.end method

.method public setXYAxis(FFI)V
    .locals 5

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move v4, p2

    move p2, p1

    move p1, v4

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    const/4 v2, 0x0

    .line 181
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    const/4 v3, 0x0

    .line 182
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 183
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 184
    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 185
    invoke-virtual {v0, p3, v3}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 187
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    const/4 v0, 0x1

    .line 188
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 189
    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 190
    invoke-virtual {v1, p2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 191
    invoke-virtual {v1, p3, v3}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 192
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 193
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 194
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisLineColor(I)V

    .line 195
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    .line 196
    iget-object p1, p0, Lcom/simdo/dw_db_s/Ui/BarChartUtil;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    return-void
.end method
