.class public Lcom/simdo/dw_db_s/databinding/FragmentDwBindingImpl;
.super Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;
.source "FragmentDwBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090266

    const/4 v2, 0x2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090152

    const/4 v2, 0x3

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09029b

    const/4 v2, 0x4

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090069

    const/4 v2, 0x5

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090068

    const/4 v2, 0x6

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09029f

    const/4 v2, 0x7

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0902a0

    const/16 v2, 0x8

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09026d

    const/16 v2, 0x9

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090143

    const/16 v2, 0xa

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090052

    const/16 v2, 0xb

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0901c8

    const/16 v2, 0xc

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090271

    const/16 v2, 0xd

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090145

    const/16 v2, 0xe

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090054

    const/16 v2, 0xf

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0901c9

    const/16 v2, 0x10

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090078

    const/16 v2, 0x11

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09008d

    const/16 v2, 0x12

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090079

    const/16 v2, 0x13

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090247

    const/16 v2, 0x14

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090230

    const/16 v2, 0x15

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09028d

    const/16 v2, 0x16

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090282

    const/16 v2, 0x17

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090283

    const/16 v2, 0x18

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090298

    const/16 v2, 0x19

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090228

    const/16 v2, 0x1a

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0902a9

    const/16 v2, 0x1b

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090235

    const/16 v2, 0x1c

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090232

    const/16 v2, 0x1d

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090063

    const/16 v2, 0x1e

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090125

    const/16 v2, 0x1f

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090096

    const/16 v2, 0x20

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090163

    const/16 v2, 0x21

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09026c

    const/16 v2, 0x22

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090144

    const/16 v2, 0x23

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f09009f

    const/16 v2, 0x24

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090236

    const/16 v2, 0x25

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090233

    const/16 v2, 0x26

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090234

    const/16 v2, 0x27

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090064

    const/16 v2, 0x28

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090065

    const/16 v2, 0x29

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f090053

    const/16 v2, 0x2a

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 68
    sget-object v0, Lcom/simdo/dw_db_s/databinding/FragmentDwBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/simdo/dw_db_s/databinding/FragmentDwBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x2b

    invoke-static {p1, p2, v2, v0, v1}, Lcom/simdo/dw_db_s/databinding/FragmentDwBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/simdo/dw_db_s/databinding/FragmentDwBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 46

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/16 v4, 0xb

    .line 71
    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x2a

    aget-object v5, p3, v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v6, 0xf

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, 0x1e

    aget-object v7, p3, v7

    check-cast v7, Lcom/google/android/material/tabs/TabItem;

    const/16 v8, 0x28

    aget-object v8, p3, v8

    check-cast v8, Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v9, 0x29

    aget-object v9, p3, v9

    check-cast v9, Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v10, 0x6

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/TextView;

    const/4 v11, 0x5

    aget-object v11, p3, v11

    check-cast v11, Lcom/simdo/dw_db_s/DrawBatteryView;

    const/16 v12, 0x11

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/Button;

    const/16 v13, 0x13

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/Button;

    const/16 v14, 0x12

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/Button;

    const/16 v16, 0x20

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/LinearLayout;

    move-object/from16 v15, v16

    const/16 v16, 0x24

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/LinearLayout;

    const/16 v17, 0x1

    aget-object v17, p3, v17

    check-cast v17, Landroid/widget/LinearLayout;

    const/16 v18, 0x1f

    aget-object v18, p3, v18

    check-cast v18, Lcom/google/android/material/tabs/TabItem;

    const/16 v19, 0xa

    aget-object v19, p3, v19

    check-cast v19, Landroid/widget/TextView;

    const/16 v20, 0x23

    aget-object v20, p3, v20

    check-cast v20, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v21, 0xe

    aget-object v21, p3, v21

    check-cast v21, Landroid/widget/TextView;

    const/16 v22, 0x3

    aget-object v22, p3, v22

    check-cast v22, Landroid/widget/ImageView;

    const/16 v23, 0x21

    aget-object v23, p3, v23

    check-cast v23, Landroid/widget/LinearLayout;

    const/16 v24, 0xc

    aget-object v24, p3, v24

    check-cast v24, Landroid/widget/TextView;

    const/16 v25, 0x10

    aget-object v25, p3, v25

    check-cast v25, Landroid/widget/TextView;

    const/16 v26, 0x1a

    aget-object v26, p3, v26

    check-cast v26, Landroid/widget/TextView;

    const/16 v27, 0x15

    aget-object v27, p3, v27

    check-cast v27, Landroid/widget/LinearLayout;

    const/16 v28, 0x1d

    aget-object v28, p3, v28

    check-cast v28, Lcom/google/android/material/tabs/TabItem;

    const/16 v29, 0x26

    aget-object v29, p3, v29

    check-cast v29, Lcom/google/android/material/tabs/TabItem;

    const/16 v30, 0x27

    aget-object v30, p3, v30

    check-cast v30, Lcom/google/android/material/tabs/TabItem;

    const/16 v31, 0x1c

    aget-object v31, p3, v31

    check-cast v31, Lcom/google/android/material/tabs/TabLayout;

    const/16 v32, 0x25

    aget-object v32, p3, v32

    check-cast v32, Lcom/google/android/material/tabs/TabLayout;

    const/16 v33, 0x14

    aget-object v33, p3, v33

    check-cast v33, Landroid/widget/Button;

    const/16 v34, 0x2

    aget-object v34, p3, v34

    check-cast v34, Landroid/widget/TextView;

    const/16 v35, 0x22

    aget-object v35, p3, v35

    check-cast v35, Landroid/widget/TextView;

    const/16 v36, 0x9

    aget-object v36, p3, v36

    check-cast v36, Landroid/widget/TextView;

    const/16 v37, 0xd

    aget-object v37, p3, v37

    check-cast v37, Landroid/widget/TextView;

    const/16 v38, 0x17

    aget-object v38, p3, v38

    check-cast v38, Landroid/widget/TextView;

    const/16 v39, 0x18

    aget-object v39, p3, v39

    check-cast v39, Landroid/widget/TextView;

    const/16 v40, 0x16

    aget-object v40, p3, v40

    check-cast v40, Landroid/widget/TextView;

    const/16 v41, 0x19

    aget-object v41, p3, v41

    check-cast v41, Landroid/widget/TextView;

    const/16 v42, 0x4

    aget-object v42, p3, v42

    check-cast v42, Landroid/widget/TextView;

    const/16 v43, 0x7

    aget-object v43, p3, v43

    check-cast v43, Landroid/widget/TextView;

    const/16 v44, 0x8

    aget-object v44, p3, v44

    check-cast v44, Landroid/widget/TextView;

    const/16 v45, 0x1b

    aget-object v45, p3, v45

    check-cast v45, Landroid/view/View;

    invoke-direct/range {v0 .. v45}, Lcom/simdo/dw_db_s/databinding/FragmentDwBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Lcom/google/android/material/tabs/TabItem;Lcom/github/mikephil/charting/charts/BarChart;Lcom/github/mikephil/charting/charts/BarChart;Landroid/widget/TextView;Lcom/simdo/dw_db_s/DrawBatteryView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/tabs/TabItem;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/google/android/material/tabs/TabItem;Lcom/google/android/material/tabs/TabItem;Lcom/google/android/material/tabs/TabItem;Lcom/google/android/material/tabs/TabLayout;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 166
    iput-wide v0, v2, Lcom/simdo/dw_db_s/databinding/FragmentDwBindingImpl;->mDirtyFlags:J

    .line 115
    iget-object v0, v2, Lcom/simdo/dw_db_s/databinding/FragmentDwBindingImpl;->freqScanLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 116
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/simdo/dw_db_s/databinding/FragmentDwBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 117
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 118
    invoke-virtual {v2, v0}, Lcom/simdo/dw_db_s/databinding/FragmentDwBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/simdo/dw_db_s/databinding/FragmentDwBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 157
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 159
    :try_start_0
    iput-wide v0, p0, Lcom/simdo/dw_db_s/databinding/FragmentDwBindingImpl;->mDirtyFlags:J

    .line 160
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iget-wide v0, p0, Lcom/simdo/dw_db_s/databinding/FragmentDwBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 135
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 125
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 126
    :try_start_0
    iput-wide v0, p0, Lcom/simdo/dw_db_s/databinding/FragmentDwBindingImpl;->mDirtyFlags:J

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {p0}, Lcom/simdo/dw_db_s/databinding/FragmentDwBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 127
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
