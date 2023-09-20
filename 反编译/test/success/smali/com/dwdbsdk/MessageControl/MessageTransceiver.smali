.class public Lcom/dwdbsdk/MessageControl/MessageTransceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:Lcom/dwdbsdk/MessageControl/MessageTransceiver;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field public b:Lcom/dwdbsdk/Socket/ZTcpService;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field public e:Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 768
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    .line 769
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->d:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static synthetic b(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)Lcom/dwdbsdk/Socket/ZTcpService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    return-object p0
.end method

.method public static build()Lcom/dwdbsdk/MessageControl/MessageTransceiver;
    .locals 2

    .line 1
    const-class v0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->f:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    invoke-direct {v1}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;-><init>()V

    sput-object v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->f:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->f:Lcom/dwdbsdk/MessageControl/MessageTransceiver;

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

.method public static synthetic c(Lcom/dwdbsdk/MessageControl/MessageTransceiver;)Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->e:Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatch DW data, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", msgType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmdType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    const/16 v0, 0x67

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p2, v0, :cond_14

    const/16 v0, 0xcb

    if-ne p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 p2, 0x1e

    if-eq p3, p2, :cond_13

    const/16 p2, 0x1f

    if-eq p3, p2, :cond_12

    const/16 p2, 0x6e

    if-eq p3, p2, :cond_11

    const/16 p2, 0x6f

    if-eq p3, p2, :cond_10

    const/16 p2, 0x73

    if-eq p3, p2, :cond_f

    const/16 p2, 0x74

    if-eq p3, p2, :cond_e

    const/16 p2, 0xe0

    if-eq p3, p2, :cond_d

    const/16 p2, 0xe1

    if-eq p3, p2, :cond_c

    if-eq p3, v3, :cond_b

    const/16 p2, 0x14

    if-eq p3, p2, :cond_a

    const/16 p2, 0xdc

    if-eq p3, p2, :cond_9

    const/16 p2, 0xf2

    if-eq p3, p2, :cond_8

    const/16 p2, 0xec

    if-eq p3, p2, :cond_7

    const/16 p2, 0xed

    if-eq p3, p2, :cond_6

    packed-switch p3, :pswitch_data_0

    if-eq p3, v2, :cond_5

    const/4 p2, 0x4

    if-eq p3, p2, :cond_4

    const/4 p2, 0x5

    if-eq p3, p2, :cond_3

    if-eq p3, v1, :cond_2

    const/4 p2, 0x7

    if-eq p3, p2, :cond_1

    packed-switch p3, :pswitch_data_1

    packed-switch p3, :pswitch_data_2

    packed-switch p3, :pswitch_data_3

    packed-switch p3, :pswitch_data_4

    goto/16 :goto_1

    .line 630
    :pswitch_0
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$29;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$29;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 639
    :pswitch_1
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$30;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$30;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 640
    :pswitch_2
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$28;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$28;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 443
    :pswitch_3
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$35;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$35;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 467
    :pswitch_4
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$38;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$38;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 468
    :pswitch_5
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$19;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$19;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 612
    :pswitch_6
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$33;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$33;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 620
    :pswitch_7
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$34;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$34;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 621
    :pswitch_8
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$31;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$31;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 629
    :pswitch_9
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$32;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$32;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 440
    :pswitch_a
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$40;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$40;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 441
    :pswitch_b
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$39;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$39;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 442
    :pswitch_c
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$37;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$37;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 366
    :pswitch_d
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$41;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$41;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 401
    :pswitch_e
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$45;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$45;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 417
    :pswitch_f
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$47;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$47;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 418
    :pswitch_10
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$46;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$46;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 419
    :pswitch_11
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$42;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$42;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 438
    :pswitch_12
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$44;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$44;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 439
    :pswitch_13
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$43;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$43;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 641
    :cond_1
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$27;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$27;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 642
    :cond_2
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$25;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$25;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 650
    :cond_3
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$26;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$26;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 651
    :cond_4
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$24;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$24;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 652
    :cond_5
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$23;

    invoke-direct {p3, p0, p4, p1}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$23;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 921
    :pswitch_14
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$17;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$17;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 948
    :pswitch_15
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$20;

    invoke-direct {p3, p0, p4, p1}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$20;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 949
    :pswitch_16
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$10;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$10;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 950
    :pswitch_17
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$9;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$9;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 993
    :pswitch_18
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$14;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$14;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 994
    :pswitch_19
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$13;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$13;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1041
    :pswitch_1a
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$18;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$18;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1071
    :pswitch_1b
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$21;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$21;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 917
    :cond_6
    iget-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p2, Lcom/dwdbsdk/MessageControl/MessageTransceiver$52;

    invoke-direct {p2, p0, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$52;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 918
    :cond_7
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$50;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$50;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 904
    :cond_8
    iget-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p2, Lcom/dwdbsdk/MessageControl/MessageTransceiver$51;

    invoke-direct {p2, p0, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$51;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 919
    :cond_9
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$36;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$36;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 920
    :cond_a
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$22;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$22;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1072
    :cond_b
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$6;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$6;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1462
    :cond_c
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$49;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$49;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1463
    :cond_d
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$48;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$48;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1464
    :cond_e
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$12;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$12;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1465
    :cond_f
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$11;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$11;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1501
    :cond_10
    :pswitch_1c
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$15;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$15;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1511
    :cond_11
    :pswitch_1d
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$16;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$16;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1512
    :cond_12
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$8;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$8;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1513
    :cond_13
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$7;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$7;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1514
    :cond_14
    :goto_0
    invoke-static {}, Lcom/dwdbsdk/MessageControl/MessageController;->build()Lcom/dwdbsdk/MessageControl/MessageController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/dwdbsdk/MessageControl/MessageController;->getTraceType(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v3, :cond_18

    const/4 p3, 0x2

    if-eq p2, p3, :cond_17

    if-eq p2, v2, :cond_16

    if-eq p2, v1, :cond_15

    goto :goto_1

    .line 1540
    :cond_15
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$5;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$5;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1541
    :cond_16
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$2;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$2;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1549
    :cond_17
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$3;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$3;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1557
    :cond_18
    iget-object p2, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance p3, Lcom/dwdbsdk/MessageControl/MessageTransceiver$4;

    invoke-direct {p3, p0, p1, p4}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$4;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1b
        :pswitch_1d
        :pswitch_1c
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xce
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd6
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xe3
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "33,33,a5,5a,"

    .line 1558
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1559
    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const-string v5, ","

    .line 1560
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1561
    array-length v5, v4

    const/16 v6, 0xc

    if-le v5, v6, :cond_0

    .line 1563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xf

    aget-object v5, v4, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xe

    aget-object v5, v4, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xd

    aget-object v5, v4, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    .line 1564
    invoke-static {v2, v4}, Le/a;->a(Ljava/lang/String;I)I

    move-result v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1567
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatch DB data, id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", msg_type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    const/16 v0, 0x30

    if-eq v2, v0, :cond_7

    const/16 v0, 0x35

    if-eq v2, v0, :cond_6

    const/16 v0, 0x12d

    if-eq v2, v0, :cond_5

    const/16 v0, 0x32

    if-eq v2, v0, :cond_6

    const/16 v0, 0x33

    if-eq v2, v0, :cond_4

    const/16 v0, 0x40

    if-eq v2, v0, :cond_3

    const/16 v0, 0x41

    if-eq v2, v0, :cond_2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    .line 1686
    :pswitch_0
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$56;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$56;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1702
    :pswitch_1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$58;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$58;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1710
    :pswitch_2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$59;

    invoke-direct {v1, p0, p2, p1}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$59;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1721
    :pswitch_3
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$60;

    invoke-direct {v1, p0, p2, p1}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$60;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1722
    :pswitch_4
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$57;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$57;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1723
    :pswitch_5
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$55;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$55;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1842
    :pswitch_6
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$69;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$69;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1843
    :pswitch_7
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$54;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$54;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1844
    :pswitch_8
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$53;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$53;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1650
    :pswitch_9
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$62;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$62;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1651
    :pswitch_a
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$61;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$61;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1683
    :pswitch_b
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$65;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$65;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1684
    :pswitch_c
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$64;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$64;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1685
    :pswitch_d
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$63;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$63;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1996
    :cond_2
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$71;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$71;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1997
    :cond_3
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$70;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$70;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1998
    :cond_4
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$68;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$68;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2030
    :cond_5
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$72;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$72;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2031
    :cond_6
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$67;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$67;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2032
    :cond_7
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$66;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$66;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public handleMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "DB"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "DW"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ff,66,00,00,"

    .line 16
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 17
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    aget-object v1, p1, v0

    const-string v2, ","

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 19
    array-length v3, v2

    const/16 v4, 0xc

    if-le v3, v4, :cond_1

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x7

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    .line 22
    invoke-static {v3, v4}, Le/a;->a(Ljava/lang/String;I)I

    move-result v3

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0xb

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x9

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x8

    aget-object v2, v2, v6

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v2, v4}, Le/a;->a(Ljava/lang/String;I)I

    move-result v2

    .line 26
    invoke-virtual {p0, p2, v3, v2, v1}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->a(Ljava/lang/String;IILjava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public handleMessage(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    aget-byte v5, p3, v3

    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x2

    if-le v4, v6, :cond_1

    .line 33
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 35
    :cond_1
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 39
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->handleMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public offerMsgQueue(Ljava/lang/String;[B)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "offerMsgQueue msg ="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public pollQueue(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$1;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public send(Ljava/lang/String;[B)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dwdbsdk/Socket/ZTcpService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->d:Landroid/os/Handler;

    new-instance v1, Lcom/dwdbsdk/MessageControl/MessageTransceiver$73;

    invoke-direct {v1, p0, p1, p2}, Lcom/dwdbsdk/MessageControl/MessageTransceiver$73;-><init>(Lcom/dwdbsdk/MessageControl/MessageTransceiver;Ljava/lang/String;[B)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setClient(Lcom/dwdbsdk/Socket/ZTcpService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->b:Lcom/dwdbsdk/Socket/ZTcpService;

    return-void
.end method

.method public setMessageObserver(Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/MessageControl/MessageTransceiver;->e:Lcom/dwdbsdk/MessageControl/MessageController$MessageObserver;

    return-void
.end method
