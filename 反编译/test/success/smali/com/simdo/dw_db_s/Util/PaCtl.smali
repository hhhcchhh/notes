.class public Lcom/simdo/dw_db_s/Util/PaCtl;
.super Ljava/lang/Object;
.source "PaCtl.java"


# static fields
.field private static instance:Lcom/simdo/dw_db_s/Util/PaCtl;


# instance fields
.field private isVehicle:Z


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/simdo/dw_db_s/Util/PaCtl;->isVehicle:Z

    .line 27
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    return-void
.end method

.method public static build()Lcom/simdo/dw_db_s/Util/PaCtl;
    .locals 2

    .line 18
    const-class v0, Lcom/simdo/dw_db_s/Util/PaCtl;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/simdo/dw_db_s/Util/PaCtl;->instance:Lcom/simdo/dw_db_s/Util/PaCtl;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/simdo/dw_db_s/Util/PaCtl;

    invoke-direct {v1}, Lcom/simdo/dw_db_s/Util/PaCtl;-><init>()V

    sput-object v1, Lcom/simdo/dw_db_s/Util/PaCtl;->instance:Lcom/simdo/dw_db_s/Util/PaCtl;

    .line 22
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    sget-object v0, Lcom/simdo/dw_db_s/Util/PaCtl;->instance:Lcom/simdo/dw_db_s/Util/PaCtl;

    return-object v0

    :catchall_0
    move-exception v1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public closePA(Ljava/lang/String;)V
    .locals 9

    .line 93
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-virtual/range {v0 .. v8}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closePA: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/PaBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    return-void
.end method

.method public initAirPA(Ljava/lang/String;I)V
    .locals 18

    if-nez p2, :cond_0

    .line 101
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v17}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 106
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initAirPA: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dwdbsdk/Bean/PaBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    return-void
.end method

.method public openPA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    .line 45
    invoke-static/range {p2 .. p2}, Lcom/simdo/dw_db_s/Util/Util;->onlyNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_7

    const/16 v2, 0x29

    if-eq v1, v2, :cond_5

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_3

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_1

    goto/16 :goto_1

    .line 79
    :cond_1
    iget-boolean v1, v0, Lcom/simdo/dw_db_s/Util/PaCtl;->isVehicle:Z

    if-nez v1, :cond_2

    .line 80
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual/range {v2 .. v10}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    goto/16 :goto_1

    .line 82
    :cond_2
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x3

    invoke-virtual/range {v11 .. v19}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    goto/16 :goto_1

    .line 72
    :cond_3
    iget-boolean v1, v0, Lcom/simdo/dw_db_s/Util/PaCtl;->isVehicle:Z

    if-nez v1, :cond_4

    .line 73
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual/range {v2 .. v10}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    goto/16 :goto_1

    .line 75
    :cond_4
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3

    invoke-virtual/range {v11 .. v19}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    goto/16 :goto_1

    .line 58
    :cond_5
    iget-boolean v1, v0, Lcom/simdo/dw_db_s/Util/PaCtl;->isVehicle:Z

    if-nez v1, :cond_6

    .line 59
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    goto :goto_1

    .line 61
    :cond_6
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v19}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    goto :goto_1

    .line 65
    :cond_7
    iget-boolean v1, v0, Lcom/simdo/dw_db_s/Util/PaCtl;->isVehicle:Z

    if-nez v1, :cond_8

    .line 66
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual/range {v2 .. v10}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    goto :goto_1

    .line 68
    :cond_8
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v19}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    goto :goto_1

    .line 50
    :cond_9
    iget-boolean v1, v0, Lcom/simdo/dw_db_s/Util/PaCtl;->isVehicle:Z

    if-nez v1, :cond_a

    .line 51
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    goto :goto_1

    .line 54
    :cond_a
    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v19}, Lcom/dwdbsdk/Bean/PaBean;->setPaGpio(IIIIIIII)V

    .line 87
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openPA: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/dwdbsdk/Bean/PaBean;->build()Lcom/dwdbsdk/Bean/PaBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/PaBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/simdo/dw_db_s/Util/AppLog;->D(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/dwdbsdk/MessageControl/MessageController;->setDWPaGpio(Ljava/lang/String;)V

    return-void
.end method

.method public setMode(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/simdo/dw_db_s/Util/PaCtl;->isVehicle:Z

    return-void
.end method
