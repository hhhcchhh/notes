.class public Lcom/dwdbsdk/MessageControl/MessageController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;
    }
.end annotation


# static fields
.field public static h:Lcom/dwdbsdk/MessageControl/MessageController;


# instance fields
.field public a:Ljava/lang/Thread;

.field public b:Z

.field public c:Lcom/dwdbsdk/Interface/DBBusinessListener;

.field public d:Lcom/dwdbsdk/Interface/DWBusinessListener;

.field public e:Ljava/util/Timer;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/MsgTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/TracePara;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1418
    iput-boolean v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->b:Z

    .line 2378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    .line 2379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    .line 2380
    invoke-virtual {p0}, Lcom/dwdbsdk/MessageControl/MessageController;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic a(Lcom/dwdbsdk/MessageControl/MessageController;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IJIIIIIIILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p23}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IJIIIIIIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/dwdbsdk/MessageControl/MessageController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->b:Z

    return p0
.end method

.method public static build()Lcom/dwdbsdk/MessageControl/MessageController;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/MessageControl/MessageController;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/MessageControl/MessageController;->h:Lcom/dwdbsdk/MessageControl/MessageController;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageController;

    invoke-direct {v1}, Lcom/dwdbsdk/MessageControl/MessageController;-><init>()V

    sput-object v1, Lcom/dwdbsdk/MessageControl/MessageController;->h:Lcom/dwdbsdk/MessageControl/MessageController;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/MessageControl/MessageController;->h:Lcom/dwdbsdk/MessageControl/MessageController;

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static synthetic c(Lcom/dwdbsdk/MessageControl/MessageController;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->a:Ljava/lang/Thread;

    return-object p0
.end method

.method public static synthetic d(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DWBusinessListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->d:Lcom/dwdbsdk/Interface/DWBusinessListener;

    return-object p0
.end method

.method public static synthetic e(Lcom/dwdbsdk/MessageControl/MessageController;)Lcom/dwdbsdk/Interface/DBBusinessListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->c:Lcom/dwdbsdk/Interface/DBBusinessListener;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->a:Ljava/lang/Thread;

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageController$2;

    invoke-direct {v1, p0}, Lcom/dwdbsdk/MessageControl/MessageController$2;-><init>(Lcom/dwdbsdk/MessageControl/MessageController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->a:Ljava/lang/Thread;

    .line 415
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 417
    new-instance v0, La/c;

    invoke-direct {v0, p2}, La/c;-><init>(I)V

    .line 418
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, La/c;->a()[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 3

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x74

    if-eq p2, v0, :cond_0

    const/16 v0, 0x1f

    if-ne p2, v0, :cond_1

    .line 356
    :cond_0
    invoke-virtual {p0, p1, p3, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;IZ)V

    .line 358
    :cond_1
    new-instance v0, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    invoke-direct {v0, v2, p2, v1}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 359
    new-instance p2, Lb/g;

    invoke-direct {p2, v0, p3}, Lb/g;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;I)V

    .line 360
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p3

    invoke-virtual {p2}, Lb/g;->a()[B

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/TracePara;->getCellId()I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1, p3}, Lcom/dwdbsdk/Bean/DW/TracePara;->setImsi(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/String;IZ)V
    .locals 2

    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DW/TracePara;->getCellId()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 14
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v1, p3}, Lcom/dwdbsdk/Bean/DW/TracePara;->setEnableChangeTac(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 361
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p2, v2

    .line 364
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 366
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "controller sendCmd() id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public final a(Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IJIIIIIIILjava/lang/String;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p12

    const/4 v5, 0x0

    const/4 v6, 0x3

    .line 15
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 16
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v2, "0"

    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 21
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 22
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v2

    move/from16 v18, v3

    goto :goto_0

    :cond_0
    const-string v2, "MCC2 = 0 not avail"

    .line 24
    invoke-static {v2}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 27
    :goto_0
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 29
    invoke-static/range {p23 .. p23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    const/16 v36, 0x0

    if-eqz p2, :cond_1

    .line 31
    invoke-static {v9}, Lcom/dwdbsdk/Bean/LteBand;->earfcn2band(I)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {v9}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v2

    :goto_1
    const v3, 0x68b6e

    const v10, 0x68402

    const v11, 0x67412

    const/16 v12, 0x1c

    const v13, 0x673ea

    const/4 v15, 0x1

    if-eqz p2, :cond_3

    const/16 v14, 0x26bf

    if-gt v9, v14, :cond_2

    add-int/lit16 v14, v9, 0x4650

    goto :goto_2

    :cond_2
    move v14, v9

    const/16 v23, 0x1

    goto :goto_6

    :cond_3
    const v14, 0x927c0

    if-lt v9, v14, :cond_4

    move v14, v9

    :goto_2
    const/16 v23, 0x0

    goto :goto_6

    :cond_4
    if-ne v2, v15, :cond_9

    if-eq v9, v13, :cond_8

    if-ne v9, v11, :cond_5

    goto :goto_3

    :cond_5
    if-ne v9, v10, :cond_6

    const v14, 0x5ebfc

    goto :goto_5

    :cond_6
    if-ne v9, v3, :cond_7

    const v14, 0x5ebe8

    goto :goto_5

    :cond_7
    const v14, 0x9470

    goto :goto_4

    :cond_8
    :goto_3
    const v14, 0x978e

    :goto_4
    sub-int v14, v9, v14

    goto :goto_5

    :cond_9
    if-ne v2, v12, :cond_2

    const v14, 0x225b0

    :goto_5
    const/16 v23, 0x2

    .line 66
    :goto_6
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 68
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 71
    invoke-static {}, Lcom/dwdbsdk/Bean/GnbTimingOffset;->build()Lcom/dwdbsdk/Bean/GnbTimingOffset;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/dwdbsdk/Bean/GnbTimingOffset;->getTimingOffset(I)Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    move-result-object v5

    const/16 v3, 0x4e

    const/4 v10, -0x1

    move/from16 v11, p9

    if-eqz v5, :cond_c

    if-ne v11, v10, :cond_a

    .line 74
    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->getTimingOffset()I

    move-result v6

    goto :goto_7

    :cond_a
    if-eq v2, v15, :cond_b

    if-eq v2, v6, :cond_b

    if-ne v2, v3, :cond_c

    .line 77
    :cond_b
    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->getTimingOffset()I

    move-result v6

    goto :goto_7

    :cond_c
    move v6, v11

    :goto_7
    const/16 v11, 0x17

    const/16 v21, 0x46

    const/16 v22, 0xa

    const/16 v24, 0xc

    const/16 v25, 0x6

    if-eq v2, v15, :cond_2e

    const/16 v13, 0x16

    if-eq v2, v12, :cond_24

    const/16 v11, 0x29

    const/16 v12, 0x18

    const/16 v15, 0x1e

    if-eq v2, v11, :cond_1f

    if-eq v2, v3, :cond_e

    const/16 v3, 0x4f

    if-eq v2, v3, :cond_d

    goto/16 :goto_f

    .line 216
    :cond_d
    invoke-static {}, Lcom/dwdbsdk/Bean/GnbTimingOffset;->build()Lcom/dwdbsdk/Bean/GnbTimingOffset;

    move-result-object v2

    const v3, 0xb09a0

    invoke-virtual {v2, v3}, Lcom/dwdbsdk/Bean/GnbTimingOffset;->getTimingOffset(I)Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    move-result-object v5

    const/16 v2, 0xe

    const/16 v3, 0xe6

    const/16 v11, 0x64

    const/16 v11, 0xe6

    const/16 v12, 0xe

    const/16 v24, 0x64

    goto/16 :goto_15

    :cond_e
    const v2, 0x9ac80

    if-eq v9, v2, :cond_1e

    const v3, 0x99240

    if-ne v9, v3, :cond_f

    goto/16 :goto_a

    :cond_f
    const v3, 0x97800

    if-lt v9, v3, :cond_10

    const v3, 0x98a60

    if-ge v9, v3, :cond_10

    goto/16 :goto_8

    :cond_10
    const v3, 0x98678

    if-lt v9, v3, :cond_11

    const v3, 0x98dc0

    if-ge v9, v3, :cond_11

    goto/16 :goto_9

    :cond_11
    const v3, 0x98dc0

    if-lt v9, v3, :cond_12

    const v3, 0x992a0

    if-ge v9, v3, :cond_12

    goto/16 :goto_9

    :cond_12
    const v3, 0x992a0

    if-lt v9, v3, :cond_13

    const v3, 0x9a500

    if-ge v9, v3, :cond_13

    goto/16 :goto_8

    :cond_13
    const v3, 0x9a500

    if-lt v9, v3, :cond_14

    const v3, 0x9a7a0

    if-ge v9, v3, :cond_14

    goto/16 :goto_9

    :cond_14
    const v3, 0x9a7a0

    if-lt v9, v3, :cond_15

    if-ge v9, v2, :cond_15

    goto :goto_9

    :cond_15
    if-lt v9, v2, :cond_16

    const v2, 0x9becc

    if-ge v9, v2, :cond_16

    goto :goto_8

    :cond_16
    const v2, 0x9becc

    if-lt v9, v2, :cond_17

    const v2, 0x9c1e0

    if-ge v9, v2, :cond_17

    goto :goto_9

    :cond_17
    const v2, 0x9c1e0

    if-lt v9, v2, :cond_18

    const v2, 0x9c6c0

    if-ge v9, v2, :cond_18

    goto :goto_9

    :cond_18
    const v2, 0x9c6c0

    if-lt v9, v2, :cond_19

    const v2, 0x9d920

    if-ge v9, v2, :cond_19

    goto :goto_8

    :cond_19
    const v2, 0x9d920

    if-lt v9, v2, :cond_1a

    const v2, 0x9dbc0

    if-ge v9, v2, :cond_1a

    goto :goto_9

    :cond_1a
    const v2, 0x9dbc0

    if-lt v9, v2, :cond_1b

    const v2, 0x9e0a0

    if-ge v9, v2, :cond_1b

    goto :goto_9

    :cond_1b
    const v2, 0x9e0a0

    if-lt v9, v2, :cond_1c

    const v2, 0x9f300

    if-ge v9, v2, :cond_1c

    :goto_8
    const/16 v24, 0x0

    goto :goto_a

    :cond_1c
    const v2, 0x9f300

    if-lt v9, v2, :cond_1d

    const v2, 0x9f5a0

    if-gt v9, v2, :cond_1d

    :goto_9
    const/16 v12, 0x1e

    const/16 v24, 0x16

    goto :goto_a

    :cond_1d
    const/4 v12, 0x0

    goto :goto_8

    .line 217
    :cond_1e
    :goto_a
    invoke-static {}, Lcom/dwdbsdk/Bean/GnbTimingOffset;->build()Lcom/dwdbsdk/Bean/GnbTimingOffset;

    move-result-object v2

    const v3, 0x99240

    invoke-virtual {v2, v3}, Lcom/dwdbsdk/Bean/GnbTimingOffset;->getTimingOffset(I)Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    move-result-object v5

    .line 218
    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->getTimingOffset()I

    move-result v6

    move v11, v12

    move/from16 v12, v24

    move/from16 v24, p17

    goto/16 :goto_15

    :cond_1f
    const v2, 0x7b49e

    if-ne v9, v2, :cond_20

    goto :goto_b

    :cond_20
    const v3, 0x8224e

    if-ne v9, v3, :cond_21

    :goto_b
    const/16 v12, 0x1e

    goto :goto_d

    :cond_21
    const v3, 0x7a4ae

    if-lt v9, v3, :cond_22

    const v3, 0x81aba

    if-ge v9, v3, :cond_22

    goto :goto_c

    :cond_22
    const v3, 0x81aba

    if-lt v9, v3, :cond_23

    const v3, 0x82d8e

    if-gt v9, v3, :cond_23

    const/16 v12, 0x1e

    const/16 v25, 0x16

    goto :goto_d

    :cond_23
    const/4 v12, 0x0

    :goto_c
    const/16 v25, 0x0

    .line 219
    :goto_d
    invoke-static {}, Lcom/dwdbsdk/Bean/GnbTimingOffset;->build()Lcom/dwdbsdk/Bean/GnbTimingOffset;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dwdbsdk/Bean/GnbTimingOffset;->getTimingOffset(I)Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    move-result-object v5

    move/from16 v24, p17

    move v11, v12

    goto/16 :goto_14

    :cond_24
    const v2, 0x25cba

    if-ne v9, v2, :cond_25

    move/from16 v24, p17

    :goto_e
    const/4 v12, 0x6

    goto/16 :goto_15

    :cond_25
    const v2, 0x2553a

    if-ne v9, v2, :cond_26

    move/from16 v24, p17

    const/16 v11, 0x16

    goto :goto_e

    :cond_26
    const v2, 0x2652a

    if-ne v9, v2, :cond_27

    const/16 v2, 0x87

    move/from16 v24, p17

    const/16 v11, 0x87

    const/16 v12, 0xa

    goto/16 :goto_15

    :cond_27
    const v2, 0x2544a

    if-ne v9, v2, :cond_28

    move/from16 v24, p17

    const/16 v11, 0xc

    goto :goto_e

    :cond_28
    const v2, 0x25bca

    if-ne v9, v2, :cond_29

    const/16 v2, 0x45

    move/from16 v24, p17

    const/16 v11, 0x45

    const/4 v12, 0x2

    goto/16 :goto_15

    :cond_29
    const v2, 0x2634a

    if-ne v9, v2, :cond_2a

    move/from16 v24, p17

    const/16 v11, 0x46

    goto :goto_e

    :cond_2a
    const v2, 0x2535a

    if-lt v9, v2, :cond_2b

    const v2, 0x259ea

    if-ge v9, v2, :cond_2b

    move/from16 v24, p17

    const/16 v11, 0xc

    goto :goto_10

    :cond_2b
    const v2, 0x259ea

    if-lt v9, v2, :cond_2c

    const v2, 0x25e9a

    if-ge v9, v2, :cond_2c

    const/16 v2, 0x38

    move/from16 v24, p17

    const/16 v11, 0x38

    goto :goto_10

    :cond_2c
    const v2, 0x25e9a

    if-lt v9, v2, :cond_2d

    const v2, 0x26372

    if-gt v9, v2, :cond_2d

    move/from16 v24, p17

    const/16 v11, 0x46

    goto :goto_10

    :cond_2d
    :goto_f
    move/from16 v24, p17

    const/4 v11, 0x0

    :goto_10
    const/4 v12, 0x0

    goto :goto_15

    :cond_2e
    const v2, 0x684f2

    if-ne v9, v2, :cond_2f

    goto :goto_13

    :cond_2f
    if-eq v9, v13, :cond_35

    const v3, 0x67412

    if-ne v9, v3, :cond_30

    goto :goto_12

    :cond_30
    const v3, 0x68402

    if-ne v9, v3, :cond_31

    const/16 v11, 0xf

    goto :goto_13

    :cond_31
    const v3, 0x68b6e

    if-ne v9, v3, :cond_32

    const/16 v11, 0x44

    const/16 v25, 0xa

    goto :goto_13

    :cond_32
    if-le v9, v13, :cond_33

    const v3, 0x6888a    # 5.99994E-40f

    if-ge v9, v3, :cond_33

    const/16 v11, 0xc

    goto :goto_11

    :cond_33
    const v3, 0x6888a    # 5.99994E-40f

    if-lt v9, v3, :cond_34

    const v3, 0x69b72

    if-gt v9, v3, :cond_34

    const/16 v11, 0x46

    goto :goto_11

    :cond_34
    const/4 v11, 0x0

    :goto_11
    const/16 v25, 0x0

    goto :goto_13

    :cond_35
    :goto_12
    const/16 v11, 0xc

    const/16 v25, 0x2

    .line 220
    :goto_13
    invoke-static {}, Lcom/dwdbsdk/Bean/GnbTimingOffset;->build()Lcom/dwdbsdk/Bean/GnbTimingOffset;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dwdbsdk/Bean/GnbTimingOffset;->getTimingOffset(I)Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;

    move-result-object v5

    .line 221
    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->getTimingOffset()I

    move-result v6

    move/from16 v24, p17

    :goto_14
    move/from16 v12, v25

    :goto_15
    if-ne v6, v10, :cond_37

    if-nez v5, :cond_36

    const/4 v15, 0x0

    goto :goto_16

    .line 339
    :cond_36
    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/GnbTimingOffset$TimingBean;->getTimingOffset()I

    move-result v2

    move v15, v2

    goto :goto_16

    :cond_37
    move v15, v6

    .line 343
    :goto_16
    invoke-virtual {v0, v1, v4, v12}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;II)V

    .line 344
    invoke-virtual {v0, v1, v4, v11}, Lcom/dwdbsdk/MessageControl/MessageController;->b(Ljava/lang/String;II)V

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    if-eqz p2, :cond_38

    const/16 v2, 0x6e

    goto :goto_17

    :cond_38
    const/16 v2, 0xa

    .line 349
    :goto_17
    invoke-virtual {v0, v1, v2}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 350
    new-instance v3, Lcom/dwdbsdk/Bean/DW/DWHeader;

    if-eqz p2, :cond_39

    const/16 v22, 0x6e

    const/16 v2, 0x6e

    goto :goto_18

    :cond_39
    const/16 v2, 0xa

    :goto_18
    const/16 v5, 0x3e8

    const/4 v6, 0x0

    invoke-direct {v3, v5, v2, v6}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 351
    new-instance v37, Lb/b;

    move-object/from16 v2, v37

    const/16 v29, 0x0

    move/from16 v4, p3

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v14

    move/from16 v9, v16

    move/from16 v10, p4

    move/from16 v13, v19

    move v14, v15

    move/from16 v15, p10

    move/from16 v16, p11

    move/from16 v19, p13

    move-wide/from16 v20, p14

    move/from16 v22, p16

    move/from16 v25, p18

    move/from16 v26, p19

    move/from16 v27, p20

    move/from16 v28, p21

    move/from16 v30, p22

    invoke-direct/range {v2 .. v36}, Lb/b;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IIIIIIIIIIIIIIIIJIIIIIIIIIIIIIII)V

    .line 355
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object v2

    invoke-virtual/range {v37 .. v37}, Lb/b;->a()[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public addMsgTypeList(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addMsgTypeList() id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;

    invoke-direct {v1, p1}, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 15
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DW/TracePara;->isTracing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller stopTimeDelay(), traceList = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 21
    invoke-static {}, Lcom/dwdbsdk/Util/SdkPref;->build()Lcom/dwdbsdk/Util/SdkPref;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dwdbsdk/Util/SdkPref;->setLastWorkInfo(Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 3

    .line 11
    new-instance v0, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 12
    new-instance p2, Lb/i;

    invoke-direct {p2, v0}, Lb/i;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;)V

    .line 13
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object v0

    invoke-virtual {p2}, Lb/i;->a()[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public final b(Ljava/lang/String;II)V
    .locals 4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/TracePara;->getCellId()I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1, p3}, Lcom/dwdbsdk/Bean/DW/TracePara;->setPa(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final c(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;

    invoke-virtual {v1, p2}, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->setMsgType(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;II)V
    .locals 4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/TracePara;->getCellId()I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1, p3}, Lcom/dwdbsdk/Bean/DW/TracePara;->setPk(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->b:Z

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->a:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v1, p2}, Lcom/dwdbsdk/Bean/DW/TracePara;->setStopCount(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getDBJamCfgInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller getDBJamCfgInfo, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x22

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public getDBLog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller getDBLog, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", server_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", log_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, La/a;

    invoke-direct {v1, v0, p2, p3}, La/a;-><init>(IILjava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v1}, La/a;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public getDBVersion(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller getDBVersion, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, La/b;

    invoke-direct {v1, v0}, La/b;-><init>(I)V

    .line 4
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object v0

    invoke-virtual {v1}, La/b;->a()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public getDWCatchCfg(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller getDWCatchCfg, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xdc

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public getDWFtpInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller getDWFtpInfo, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xcc

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public getDWGpsInOut(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller getDWGpsInOut, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xe1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public getDWGpsInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller getDWGpsInfo, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xec

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public getDWLog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller getDWLog, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", log_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/d;

    invoke-direct {v0, v1, p2, p3}, Lb/d;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;ILjava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/d;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public getDWMethIp(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller getDWMethIp, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xca

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public getDWOpLog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller getDWOpLog, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", log_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/d;

    invoke-direct {v0, v1, p2, p3}, Lb/d;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;ILjava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/d;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public getDWPaGpioInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller getDWPaGpioInfo, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xce

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public getDWSysInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller getDWSysInfo, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xd0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public getDWUserData(Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller getDWUserData, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xf2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/w;

    const-string v2, ""

    invoke-direct {v0, v1, v3, p2, v2}, Lb/w;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IILjava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/w;->a()[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public getDWVersion(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller getDWVersion, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x12

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public getImsi(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/TracePara;->getCellId()I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/TracePara;->getImsi()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMsgType(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->getMsgType()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const p1, 0xffff

    return p1
.end method

.method public getPa(Ljava/lang/String;I)I
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/TracePara;->getArfcn()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/TracePara;->getPa()I

    move-result p1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public getPk(Ljava/lang/String;I)I
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/TracePara;->getArfcn()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/TracePara;->getPk()I

    move-result p1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public getStopCount(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/TracePara;->getStopCount()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getTraceType(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->getTraceType()I

    move-result p1

    return p1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public initDWLteTrace(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IJIIIIIIILjava/lang/String;)V
    .locals 44

    move-object/from16 v14, p0

    move/from16 v13, p2

    move/from16 v4, p3

    move-wide/from16 v0, p13

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "controller initDWLteTrace\uff0c cell_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", startTac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", plmn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", arfcn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pci = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ue_max_pwr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", timing_Offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p8

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", work_mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p9

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", air_sync = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p10

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", subPlmn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p11

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ul_rb_offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", cid = "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ", ssb_bitmap = "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", band_width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cfr_enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", swap_rf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reject_code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rxLevMin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mob_reject_code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", split_arfcn_dl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    const-wide/16 v16, 0x2710

    cmp-long v2, v0, v16

    if-gez v2, :cond_0

    const-wide/32 v16, 0xffff

    add-long v0, v0, v16

    :cond_0
    move-wide/from16 v42, v0

    .line 10
    iget-object v0, v14, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Bean/DW/TracePara;

    move-object v15, v1

    add-int/lit8 v25, v4, 0x6

    const/16 v17, 0x1

    const-string v19, ""

    const/16 v39, 0x0

    move-object/from16 v16, p1

    move/from16 v18, p2

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p7

    move/from16 v24, p3

    move/from16 v26, p8

    move/from16 v27, p9

    move/from16 v28, p10

    move-object/from16 v29, p11

    move/from16 v30, p12

    move-wide/from16 v31, v42

    move/from16 v33, p15

    move/from16 v34, p16

    move/from16 v35, p17

    move/from16 v36, p18

    move/from16 v37, p19

    move/from16 v38, p20

    move/from16 v40, p21

    move-object/from16 v41, p22

    invoke-direct/range {v15 .. v41}, Lcom/dwdbsdk/Bean/DW/TracePara;-><init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;IJIIIIIIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move v15, v13

    move/from16 v13, p12

    move-wide/from16 v14, v42

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move-object/from16 v23, p22

    .line 12
    invoke-virtual/range {v0 .. v23}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IJIIIIIIILjava/lang/String;)V

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 15
    invoke-virtual {v1, v2, v3, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;IZ)V

    return-void
.end method

.method public initDWNrTrace(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IJIIIIIIILjava/lang/String;)V
    .locals 45

    move-object/from16 v14, p0

    move/from16 v13, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v0, p8

    move-object/from16 v1, p11

    move-wide/from16 v2, p13

    .line 1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "controller initDWNrTrace\uff0c cell_id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", startTac = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", plmn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", arfcn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", pci = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", ue_max_pwr = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p7

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", timing_Offset = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", work_mode = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p9

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", air_sync = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p10

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", subPlmn = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", ul_rb_offset = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", cid = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ", ssb_bitmap = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", band_width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p16

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", cfr_enable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p17

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", swap_rf = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p18

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", reject_code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p19

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", rxLevMin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mob_reject_code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p21

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", split_arfcn_dl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    const-wide/16 v16, 0x2710

    cmp-long v6, v2, v16

    if-gez v6, :cond_0

    const-wide/32 v16, 0xffff

    add-long v2, v2, v16

    :cond_0
    move-wide/from16 v42, v2

    .line 8
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v2

    const-string v3, "0"

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v6, 0x1c

    const/4 v13, 0x1

    if-eqz v3, :cond_5

    if-eq v2, v6, :cond_4

    const/16 v3, 0x29

    if-eq v2, v3, :cond_4

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    if-eq v2, v13, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_5

    :cond_2
    const-string v1, "46001"

    .line 14
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v13, "46011"

    if-eqz v3, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_0
    const-string v1, "46000"

    .line 17
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "46015"

    :cond_5
    :goto_1
    move-object v13, v1

    :goto_2
    const/16 v1, 0x28

    if-eq v2, v1, :cond_8

    const/16 v1, 0x29

    if-eq v2, v1, :cond_8

    const/16 v1, 0x4f

    if-eq v2, v1, :cond_8

    if-ne v2, v6, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x1

    if-eq v2, v6, :cond_7

    const/16 v1, 0x4e

    if-ne v2, v1, :cond_9

    :cond_7
    const/4 v0, 0x0

    const/16 v44, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v6, 0x1

    const v1, 0x2dc6c0

    sub-int v0, v1, v0

    :cond_9
    move/from16 v44, v0

    .line 29
    :goto_4
    iget-object v0, v14, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Bean/DW/TracePara;

    move-object v15, v1

    add-int/lit8 v25, v4, 0x6

    const/16 v17, 0x0

    const-string v19, ""

    const/16 v39, 0x0

    move-object/from16 v16, p1

    move/from16 v18, p2

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p7

    move/from16 v24, p3

    move/from16 v26, v44

    move/from16 v27, p9

    move/from16 v28, p10

    move-object/from16 v29, v13

    move/from16 v30, p12

    move-wide/from16 v31, v42

    move/from16 v33, p15

    move/from16 v34, p16

    move/from16 v35, p17

    move/from16 v36, p18

    move/from16 v37, p19

    move/from16 v38, p20

    move/from16 v40, p21

    move-object/from16 v41, p22

    invoke-direct/range {v15 .. v41}, Lcom/dwdbsdk/Bean/DW/TracePara;-><init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;IJIIIIIIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    const/4 v15, 0x1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, v44

    move/from16 v10, p9

    move/from16 v11, p10

    move-object v12, v13

    move/from16 v15, p2

    move/from16 v13, p12

    move-wide/from16 v14, v42

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move-object/from16 v23, p22

    .line 31
    invoke-virtual/range {v0 .. v23}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IJIIIIIIILjava/lang/String;)V

    move/from16 v2, p2

    const/4 v3, 0x1

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;IZ)V

    return-void
.end method

.method public isEnableChangeTac(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/TracePara;->getCellId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/TracePara;->isEnableChangeTac()Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isTracing(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/TracePara;->isTracing()Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isTracing(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/TracePara;->getCellId()I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1}, Lcom/dwdbsdk/Bean/DW/TracePara;->isTracing()Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public removeDBBusinessListener()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->c:Lcom/dwdbsdk/Interface/DBBusinessListener;

    return-void
.end method

.method public removeDWBusinessListener()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->d:Lcom/dwdbsdk/Interface/DWBusinessListener;

    return-void
.end method

.method public removeMsgTypeList(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public resetLastListState(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageController;->isTracing(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/dwdbsdk/Util/SdkPref;->build()Lcom/dwdbsdk/Util/SdkPref;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dwdbsdk/Util/SdkPref;->getLastWorkInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->setTraceType(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;IZ)V

    :cond_3
    return-void
.end method

.method public sendHeartBeat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "G70"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "G758"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "G10"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    new-instance p1, La/c;

    invoke-direct {p1, v1}, La/c;-><init>(I)V

    .line 7
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object v0

    invoke-virtual {p1}, La/c;->a()[B

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    new-instance p1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v0, 0x3e8

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 9
    new-instance v0, Lb/i;

    invoke-direct {v0, p1}, Lb/i;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;)V

    .line 10
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p1

    invoke-virtual {v0}, Lb/i;->a()[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public setDBBtName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDBBtName, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bt_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, La/f;

    invoke-direct {v1, v0, p2}, La/f;-><init>(ILjava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v1}, La/f;->a()[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDBBusinessListener(Lcom/dwdbsdk/Interface/DBBusinessListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->c:Lcom/dwdbsdk/Interface/DBBusinessListener;

    return-void
.end method

.method public setDBDevName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDBDevName, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dev_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, La/h;

    invoke-direct {v1, v0, p2}, La/h;-><init>(ILjava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v1}, La/h;->a()[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDBGpio(Ljava/lang/String;IIIIII)V
    .locals 12

    move-object v0, p1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "controller setDBGpio, id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", gpio_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gpio_2 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gpio_3 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gpio_4 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p5

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gpio_5 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p6

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gpio_6 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v1, 0x41

    move-object v11, p0

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 4
    new-instance v1, La/d;

    const/16 v4, 0x41

    move-object v3, v1

    move v5, p2

    invoke-direct/range {v3 .. v10}, La/d;-><init>(IIIIIII)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object v2

    invoke-virtual {v1}, La/d;->a()[B

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDBReboot(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDBReboot, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public setDBRxGain(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDBRxGain, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rx_gain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x40

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, La/e;

    invoke-direct {v1, v0, p2}, La/e;-><init>(II)V

    .line 4
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v1}, La/e;->a()[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDBTime(Ljava/lang/String;)V
    .locals 3

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 1
    invoke-static {v0}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "controller setDBTime, id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 4
    new-instance v2, La/i;

    invoke-direct {v2, v1, v0}, La/i;-><init>(ILjava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object v0

    invoke-virtual {v2}, La/i;->a()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDBUpgrade(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDBUpgrade, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version_path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, La/n;

    invoke-direct {v1, v0, p2, p3, p4}, La/n;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v1}, La/n;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDBWifiInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDBWifiInfo, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", psw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, La/o;

    invoke-direct {v1, v0, p2, p3}, La/o;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v1}, La/o;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWBtName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWBtName, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xc9

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/j;

    invoke-direct {v0, v1, p2}, Lb/j;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/j;->a()[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWBusinessListener(Lcom/dwdbsdk/Interface/DWBusinessListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->d:Lcom/dwdbsdk/Interface/DWBusinessListener;

    return-void
.end method

.method public setDWDevName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWDevName, id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dev_name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xd1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/t;

    invoke-direct {v0, v1, p2}, Lb/t;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/t;->a()[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWDualCell(Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWDualCell, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xd4

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/c;

    invoke-direct {v0, v1, p2}, Lb/c;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;I)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/c;->a()[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWFanAutoSpeed(Ljava/lang/String;[I[I[I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWFanAutoSpeed, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", min_temp ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", max_temp ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", speed_rate ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xe9

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/k;

    invoke-direct {v0, v1, p2, p3, p4}, Lb/k;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;[I[I[I)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/k;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWFanSpeed(Ljava/lang/String;III)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWFanSpeed, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fan_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fan_speed ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xd8

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/4 v2, 0x1

    if-ne p4, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 p4, 0x3e8

    invoke-direct {v1, p4, v0, v2}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance p4, Lb/l;

    invoke-direct {p4, v1, p2, p3}, Lb/l;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;II)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {p4}, Lb/l;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWForwardUdpMsg(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWForwardUdpMsg, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dst_ip = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dst_port = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "fwd_info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xe7

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/m;

    invoke-direct {v0, v1, p2, p3, p4}, Lb/m;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/m;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWFtpServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWFtpServer, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ftp_server ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ftp_path ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ftp_user ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ftp_passwd ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", upload_interval ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xcd

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 4
    new-instance v2, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v1, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 5
    new-instance v0, Lb/n;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lb/n;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/n;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWGnbRxGain(Ljava/lang/String;II)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWGnbRxGain, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rx_gain ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xd6

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/s;

    invoke-direct {v0, v1, p2, p3}, Lb/s;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;II)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/s;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWGnbUpgrade(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWGnbUpgrade, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version_name ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version_path ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/d0;

    invoke-direct {v0, v1, p2, p3, p4}, Lb/d0;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/d0;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWGpioTxRx(Ljava/lang/String;[I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWGpioTxRx, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tx_rx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xed

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/o;

    invoke-direct {v0, v1, p2}, Lb/o;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;[I)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/o;->a()[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWGps(Ljava/lang/String;III)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWGps, id ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gnss_select ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latitude ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", longitude ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xd3

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/p;

    invoke-direct {v0, v1, p2, p3, p4}, Lb/p;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;III)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/p;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWGpsInOut(Ljava/lang/String;II)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWGpsInOut, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", in_gpio_idx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xe0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/q;

    invoke-direct {v0, v1, p2, p3}, Lb/q;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;II)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/q;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWJamArfcn(Ljava/lang/String;III)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWJamArfcn, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arfcn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xe5

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/r;

    invoke-direct {v0, v1, p2, p3, p4}, Lb/r;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;III)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/r;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWLteBlackList(Ljava/lang/String;IILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/UeidBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWLteBlackList, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ueImsi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x6f

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/a;

    invoke-direct {v0, v1, p2, p3, p4}, Lb/a;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IILjava/util/List;)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/a;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWMethIp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWMethIp, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ip = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gateway ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xcb

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v2, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v1, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/f;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lb/f;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/f;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWNrBlackList(Ljava/lang/String;IILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/UeidBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWNrBlackList, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ueImsi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/a;

    invoke-direct {v0, v1, p2, p3, p4}, Lb/a;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IILjava/util/List;)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/a;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWNvTxPwrOffset(Ljava/lang/String;III)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWNvTxPwrOffset, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arfcn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xd2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/v;

    invoke-direct {v0, v1, p2, p3, p4}, Lb/v;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;III)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/v;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWPaGpio(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWPaGpio, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xcf

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/e;

    invoke-direct {v0, v1}, Lb/e;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object v1

    invoke-virtual {v0}, Lb/e;->a()[B

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWReboot(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWReboot, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x11

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public setDWTime(Ljava/lang/String;)V
    .locals 5

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 1
    invoke-static {v0}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "controller setDWTime, id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v1, 0x9

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 4
    new-instance v2, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 5
    new-instance v1, Lb/u;

    invoke-direct {v1, v2, v0}, Lb/u;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object v0

    invoke-virtual {v1}, Lb/u;->a()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWTxPwrOffset(Ljava/lang/String;III)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWTxPwrOffset, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arfcn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v0, 0x3

    if-le p4, v0, :cond_0

    const/4 p4, 0x3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/TracePara;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/dwdbsdk/Bean/DW/TracePara;->setTraceTacChangeDelay(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v1, 0xc

    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 10
    new-instance v2, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3, v1, v0}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 11
    new-instance v0, Lb/v;

    invoke-direct {v0, v2, p2, p3, p4}, Lb/v;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;III)V

    .line 12
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/v;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWUserData(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller getUserData, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user_data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 p3, 0xf2

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v0, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, v2}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance p3, Lb/w;

    const-string v1, ""

    invoke-direct {p3, v0, v2, p2, v1}, Lb/w;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IILjava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {p3}, Lb/w;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDWWifiInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller setDWWifiInfo, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ssid ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", passwd ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x14

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/e0;

    invoke-direct {v0, v1, p2, p3}, Lb/e0;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/e0;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDataFwd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDataFwd data = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 2
    new-instance v0, La/g;

    const/16 v1, 0x12d

    invoke-direct {v0, v1, p2}, La/g;-><init>(ILjava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, La/g;->a()[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDataFwd(Ljava/lang/String;[B)V
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDataFwd data = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 8
    new-instance v0, La/g;

    const/16 v1, 0x12d

    invoke-direct {v0, v1, p2}, La/g;-><init>(I[B)V

    .line 9
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, La/g;->a()[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setDataFwd(Ljava/lang/String;[C)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDataFwd data = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 5
    new-instance v0, La/g;

    const/16 v1, 0x12d

    invoke-direct {v0, v1, p2}, La/g;-><init>(I[C)V

    .line 6
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, La/g;->a()[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public setTraceType(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;

    invoke-virtual {v1, p2}, Lcom/dwdbsdk/Bean/DW/MsgTypeBean;->setTraceType(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTracing(Ljava/lang/String;IZ)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DW/TracePara;->getCellId()I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/DW/TracePara;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dwdbsdk/Bean/DW/TracePara;

    invoke-virtual {p1, p3}, Lcom/dwdbsdk/Bean/DW/TracePara;->setTracing(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez p3, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/dwdbsdk/MessageControl/MessageController;->b()V

    :cond_2
    return-void
.end method

.method public setTransceiver(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;

    invoke-direct {v0, p0}, Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;-><init>(Lcom/dwdbsdk/MessageControl/MessageController;)V

    invoke-virtual {p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->setMessageObserver(Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;)V

    return-void
.end method

.method public startBandFreqScan(Ljava/lang/String;IIIII)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller startBandFreqScan, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", report_level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", async_enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chan_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", band_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time_offset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xe8

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const/16 v1, 0xe9

    .line 4
    invoke-virtual {p0, p1, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 5
    :cond_1
    :goto_0
    new-instance v3, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-direct {v3, v1, v0, v2}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 6
    new-instance v0, Lb/x;

    move-object v2, v0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lb/x;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IIIII)V

    .line 7
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/x;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public startDBJam(Ljava/lang/String;ILcom/dwdbsdk/Bean/DB/TxBean;Lcom/dwdbsdk/Bean/DB/TxBean;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/dwdbsdk/Bean/DB/TxBean;",
            "Lcom/dwdbsdk/Bean/DB/TxBean;",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DB/OrxBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller startDBJam, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", save = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tx1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tx2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orxList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v0, La/j;

    const/16 v2, 0x20

    move-object v1, v0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, La/j;-><init>(IILcom/dwdbsdk/Bean/DB/TxBean;Lcom/dwdbsdk/Bean/DB/TxBean;Ljava/util/List;)V

    .line 4
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, La/j;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public startDBPwrDetect(Ljava/lang/String;IIIIIIIIIIIIIIII)V
    .locals 22

    move-object/from16 v0, p1

    move/from16 v1, p6

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "controller startDBPwrDetect, id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", dl_arfcn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ul_arfcn = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p3

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pk = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pa = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", time_offset = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p7

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", par_cfg = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p8

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pci = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p9

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ed_ul_rb_offset = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p10

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", slot_index = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p11

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", unlock_check_point = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p12

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bandwidth = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p13

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", slot_index2= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p14

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,smooth_type = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p15

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,smooth_win_len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,prb_num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v2, 0x32

    move-object/from16 v5, p0

    .line 5
    invoke-virtual {v5, v0, v2}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 7
    invoke-static/range {p2 .. p2}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_0

    const/16 v3, 0x4f

    if-eq v2, v3, :cond_0

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_1

    :cond_0
    const v2, 0x2dc6c0

    sub-int v1, v2, v1

    .line 9
    :cond_1
    new-instance v2, La/k;

    move-object v4, v2

    const/16 v3, 0x32

    move v5, v3

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move v10, v1

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p12

    move/from16 v16, p9

    move/from16 v17, p13

    move/from16 v18, p14

    move/from16 v19, p15

    move/from16 v20, p16

    move/from16 v21, p17

    invoke-direct/range {v4 .. v21}, La/k;-><init>(IIIIIIIIIIIIIIIII)V

    .line 11
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object v1

    invoke-virtual {v2}, La/k;->a()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public startDBSG(Ljava/lang/String;IJII)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller startDBSG, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tx_chan = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lo_frequency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tx_atten = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sg_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x23

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v0, La/l;

    const/16 v2, 0x23

    move-object v1, v0

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, La/l;-><init>(IIJII)V

    .line 4
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, La/l;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public startDBScan(Ljava/lang/String;JII)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller startDBScan, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", freq_carrier = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pk = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x30

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v0, La/m;

    const/16 v2, 0x30

    move-object v1, v0

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, La/m;-><init>(IJII)V

    .line 4
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, La/m;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public startDWCatch(Ljava/lang/String;IIIII)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller startDWCatch, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", save_flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", start_tac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end_tac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tac_interva = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->setTraceType(Ljava/lang/String;I)V

    const/16 v0, 0xd

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 4
    new-instance v2, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v1, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 5
    new-instance v0, Lb/y;

    move-object v1, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lb/y;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IIIII)V

    .line 6
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/y;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public startDWControl(Ljava/lang/String;II)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller startDWControl, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->setTraceType(Ljava/lang/String;I)V

    const/16 v0, 0x1e

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 4
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 5
    new-instance v0, Lb/z;

    invoke-direct {v0, v1, p2, p3}, Lb/z;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;II)V

    const/4 p3, 0x1

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;IZ)V

    .line 7
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/z;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public startDWFreqScan(Ljava/lang/String;IIILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "controller startDWFreqScan, id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", report_level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", async_enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", arfcn_num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", chan_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", arfcn_list = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", time_offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v3, v10, :cond_4

    .line 8
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v10

    if-eq v10, v11, :cond_2

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v10

    const/16 v11, 0x4e

    if-ne v10, v11, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v10

    const/16 v11, 0x1c

    if-eq v10, v11, :cond_1

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v10

    const/16 v11, 0x29

    if-eq v10, v11, :cond_1

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v10

    const/16 v11, 0x28

    if-eq v10, v11, :cond_1

    .line 11
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v10

    const/16 v11, 0x4f

    if-ne v10, v11, :cond_3

    .line 12
    :cond_1
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const v11, 0x2dc6c0

    sub-int/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v3, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 13
    :cond_2
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v3, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0xe2

    if-nez v4, :cond_5

    .line 19
    invoke-virtual {p0, p1, v3}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    goto :goto_3

    :cond_5
    if-ne v4, v11, :cond_6

    const/16 v10, 0xe3

    .line 20
    invoke-virtual {p0, p1, v10}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 21
    :cond_6
    :goto_3
    new-instance v10, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v11, 0x3e8

    invoke-direct {v10, v11, v3, v2}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 22
    new-instance v11, Lb/a0;

    move-object v2, v11

    move-object v3, v10

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lb/a0;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IIILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 23
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object v2

    invoke-virtual {v11}, Lb/a0;->a()[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public startDWLteTrace(Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller startDWLteTrace, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", target_num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imsi ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    if-nez p4, :cond_0

    const-string p1, "controller startDWLteTrace error, imsi is null, return and end"

    .line 3
    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x6

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->setTraceType(Ljava/lang/String;I)V

    const/16 v0, 0x73

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 9
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 10
    new-instance v0, Lb/c0;

    invoke-direct {v0, v1, p2, p3, p4}, Lb/c0;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IILjava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/c0;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public startDWNrTrace(Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller startDWNrTrace, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", target_num = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imsi ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    if-nez p4, :cond_0

    const-string p1, "controller startDWNrTrace error, imsi is null, return and end"

    .line 3
    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->setTraceType(Ljava/lang/String;I)V

    const/16 v0, 0xf

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 8
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 9
    new-instance v0, Lb/c0;

    invoke-direct {v0, v1, p2, p3, p4}, Lb/c0;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IILjava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p3

    invoke-virtual {v0}, Lb/c0;->a()[B

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    .line 11
    invoke-virtual {p0, p1, p2, p4}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public startDWTdMeasure(Ljava/lang/String;IIIII)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller startDWTdMeasure, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", swap_rf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",  , arfcn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pk/pa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xe6

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 4
    new-instance v2, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v1, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 5
    new-instance v0, Lb/b0;

    move-object v1, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lb/b0;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IIIII)V

    .line 6
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/b0;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public startTimeDelay()V
    .locals 7

    const-string v0, "controller startTimeDelay"

    .line 1
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageController;->e:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 3
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/dwdbsdk/MessageControl/MessageController;->e:Ljava/util/Timer;

    .line 4
    new-instance v2, Lcom/dwdbsdk/MessageControl/MessageController$1;

    invoke-direct {v2, p0}, Lcom/dwdbsdk/MessageControl/MessageController$1;-><init>(Lcom/dwdbsdk/MessageControl/MessageController;)V

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public stopDBJam(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller stopDBJam, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x21

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public stopDBPwrDetect(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller stopDBPwrDetect, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x33

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public stopDBSG(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller stopDBSG, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x24

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public stopDWCatch(Ljava/lang/String;II)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller stopDWCatch, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", save_flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xe

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2, v0, p3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance p3, Lb/g;

    invoke-direct {p3, v1, p2}, Lb/g;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;I)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {p3}, Lb/g;->a()[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method

.method public stopDWControl(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller stopDWControl, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x1f

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public stopDWFreqScan(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller stopDWFreqScan, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0xe4

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public stopDWLteTrace(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller stopDWLteTrace, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x74

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public stopDWNrTrace(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller stopDWNrTrace, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cell_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcom/dwdbsdk/MessageControl/MessageController;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public writeDWOpLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "controller writeDWOpLog, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", record = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageController;->c(Ljava/lang/String;I)V

    .line 3
    new-instance v1, Lcom/dwdbsdk/Bean/DW/DWHeader;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dwdbsdk/Bean/DW/DWHeader;-><init>(III)V

    .line 4
    new-instance v0, Lb/f0;

    invoke-direct {v0, v1, p2}, Lb/f0;-><init>(Lcom/dwdbsdk/Bean/DW/DWHeader;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    move-result-object p2

    invoke-virtual {v0}, Lb/f0;->a()[B

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->send(Ljava/lang/String;[B)Z

    return-void
.end method
