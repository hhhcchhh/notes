.class public Lcom/dwdbsdk/Arfcn/Nr5g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dwdbsdk/Arfcn/Nr5g$STATE;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "AT+CSYSSEL=\"nr5g_band\",28:41:79\r"

.field public static final B:Ljava/lang/String; = "AT+CSYSSEL=\"nr5g_band\",1:3:78\r"

.field public static final C:Ljava/lang/String; = "AT+C5GCELLCFG =\"arfcn\",1,1:504990\r"

.field public static final D:Ljava/lang/String; = "AT+C5GCELLCFG =\"arfcn\",1,1:633984\r"

.field public static final E:Ljava/lang/String; = "AT+C5GCELLCFG=\"arfcn\",1,1:627264\r"

.field public static final F:Ljava/lang/String; = "AT+C5GCELLCFG =\"arfcn\",1,1:"

.field public static final G:Ljava/lang/String; = "AT+CSYSSEL=\"nr5g_band\"\r"

.field public static final H:Ljava/lang/String; = "AT+CSYSSEL\r"

.field public static final I:Ljava/lang/String; = "AT+CNWSEARCH=\"nr5g\",1\r"

.field public static final J:Ljava/lang/String; = "AT+CNWSEARCH=\"nr5g\",0\r"

.field public static final K:Ljava/lang/String; = "AT+CNWSEARCH=\"nr5g\",2\r"

.field public static p:Lcom/dwdbsdk/Arfcn/Nr5g; = null

.field public static final q:Ljava/lang/String; = "AT+CNMP=71\r"

.field public static final r:Ljava/lang/String; = "AT+CFUN=0\r"

.field public static final s:Ljava/lang/String; = "AT+CFUN=1\r"

.field public static final t:Ljava/lang/String; = "AT+SIMCOMATI\r"

.field public static final u:Ljava/lang/String; = "AT+CRESET\r"

.field public static final v:Ljava/lang/String; = "AT+CPOF\r"

.field public static final w:Ljava/lang/String; = "AT+CPIN?\r"

.field public static final x:Ljava/lang/String; = "AT+CMGRMI\r"

.field public static final y:Ljava/lang/String; = "AT+CMGRMI=6\r"

.field public static final z:Ljava/lang/String; = "AT+C5GCELLCFG=\"unlock\"\r"


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dwdbsdk/Interface/Nr5gScanArfcnListener;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/LocBean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/LocBean;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/util/Timer;

.field public j:I

.field public k:I

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->a:Ljava/util/ArrayList;

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    .line 747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 748
    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->d:I

    .line 749
    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->e:I

    .line 750
    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->f:I

    .line 753
    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->h:I

    const/4 v0, 0x0

    .line 754
    iput-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->i:Ljava/util/Timer;

    const/4 v0, -0x1

    .line 756
    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->k:I

    return-void
.end method

.method public static synthetic a(Lcom/dwdbsdk/Arfcn/Nr5g;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->d:I

    return p1
.end method

.method public static a()Lcom/dwdbsdk/Arfcn/Nr5g;
    .locals 2

    .line 3
    const-class v0, Lcom/dwdbsdk/Arfcn/Nr5g;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/dwdbsdk/Arfcn/Nr5g;->p:Lcom/dwdbsdk/Arfcn/Nr5g;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/dwdbsdk/Arfcn/Nr5g;

    invoke-direct {v1}, Lcom/dwdbsdk/Arfcn/Nr5g;-><init>()V

    sput-object v1, Lcom/dwdbsdk/Arfcn/Nr5g;->p:Lcom/dwdbsdk/Arfcn/Nr5g;

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object v0, Lcom/dwdbsdk/Arfcn/Nr5g;->p:Lcom/dwdbsdk/Arfcn/Nr5g;

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static synthetic a(Lcom/dwdbsdk/Arfcn/Nr5g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dwdbsdk/Arfcn/Nr5g;->k()V

    return-void
.end method

.method public static synthetic b(Lcom/dwdbsdk/Arfcn/Nr5g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->d:I

    return p0
.end method

.method public static synthetic b(Lcom/dwdbsdk/Arfcn/Nr5g;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    return p1
.end method

.method public static synthetic c(Lcom/dwdbsdk/Arfcn/Nr5g;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->d:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 152
    iput p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->h:I

    .line 153
    invoke-virtual {p0}, Lcom/dwdbsdk/Arfcn/Nr5g;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 154
    iput p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 156
    iput p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    :goto_0
    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->m:Z

    const/4 p1, -0x1

    .line 159
    iput p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->k:I

    .line 160
    iget-object p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 161
    iget-object p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dwdbsdk/Interface/Nr5gScanArfcnListener;

    if-eqz v0, :cond_1

    .line 163
    iget-object v1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/dwdbsdk/Interface/Nr5gScanArfcnListener;->onNr5gScanArfcnRsp(Ljava/util/List;)V

    goto :goto_1

    .line 165
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ARFCN: scanType: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/dwdbsdk/Interface/Nr5gScanArfcnListener;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 17

    .line 11
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\("

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    const/4 v8, 0x0

    .line 14
    :goto_0
    array-length v0, v1

    if-ge v8, v0, :cond_10

    .line 15
    aget-object v0, v1, v8

    const-string v9, ")"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v10, "-"

    const-string v13, ","

    const-string v14, "-110"

    const-string v15, "."

    const/4 v12, 0x1

    const/4 v11, 0x2

    if-eqz v0, :cond_8

    .line 19
    aget-object v0, v1, v8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    const-string v9, "OK"

    .line 20
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    .line 21
    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 22
    array-length v9, v0

    if-lt v9, v12, :cond_1

    aget-object v9, v0, v3

    if-eqz v9, :cond_1

    .line 23
    invoke-static {v9}, Le/a;->c(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    goto/16 :goto_4

    .line 26
    :cond_0
    aget-object v9, v0, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_1

    :cond_1
    const/4 v9, -0x1

    .line 28
    :goto_1
    array-length v13, v0

    if-lt v13, v11, :cond_3

    aget-object v13, v0, v12

    if-eqz v13, :cond_3

    .line 29
    invoke-static {v13}, Le/a;->c(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_4

    .line 32
    :cond_2
    aget-object v12, v0, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_2

    :cond_3
    const/4 v13, -0x1

    .line 34
    :goto_2
    array-length v12, v0

    const/4 v3, 0x3

    if-lt v12, v3, :cond_7

    aget-object v3, v0, v11

    if-eqz v3, :cond_7

    .line 36
    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 37
    aget-object v0, v0, v11

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 39
    :cond_4
    invoke-static {v3}, Le/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 43
    :cond_5
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v15, 0x82

    cmp-long v0, v11, v15

    if-lez v0, :cond_6

    goto :goto_3

    .line 46
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    move-object v6, v14

    .line 53
    new-instance v0, Lcom/dwdbsdk/Bean/DW/BsBeam;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v9, v13, v3}, Lcom/dwdbsdk/Bean/DW/BsBeam;-><init>(III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 56
    :cond_8
    aget-object v0, v1, v8

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    array-length v3, v0

    if-lt v3, v11, :cond_a

    aget-object v3, v0, v12

    if-eqz v3, :cond_a

    .line 59
    invoke-static {v3}, Le/a;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    return-void

    :cond_9
    move-object v4, v3

    .line 63
    :cond_a
    array-length v3, v0

    const/4 v9, 0x3

    if-lt v3, v9, :cond_c

    aget-object v3, v0, v11

    if-eqz v3, :cond_c

    .line 65
    invoke-static {v3}, Le/a;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    return-void

    :cond_b
    move-object v5, v3

    .line 69
    :cond_c
    array-length v3, v0

    const/4 v9, 0x4

    if-lt v3, v9, :cond_7

    const/4 v3, 0x3

    aget-object v9, v0, v3

    if-eqz v9, :cond_7

    .line 71
    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 72
    aget-object v0, v0, v3

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_d
    const/4 v11, 0x0

    .line 74
    :goto_5
    invoke-static {v9}, Le/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 78
    :cond_e
    :try_start_1
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v15, 0x82

    cmp-long v0, v12, v15

    if-lez v0, :cond_f

    goto :goto_6

    .line 81
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v0

    goto :goto_7

    :catch_1
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    move-object v6, v14

    :goto_7
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 90
    :cond_10
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v2, ""

    const-string v3, ""

    move-object/from16 v1, p0

    .line 91
    invoke-virtual/range {v1 .. v7}, Lcom/dwdbsdk/Arfcn/Nr5g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/BsBeam;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v8, p6

    const/4 v1, 0x0

    .line 136
    :goto_0
    iget-object v2, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 137
    iget-object v2, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/LocBean;->getPci()Ljava/lang/String;

    move-result-object v2

    move-object v5, p4

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/LocBean;->getArfcn()Ljava/lang/String;

    move-result-object v2

    move-object v4, p3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    iget-object v2, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/LocBean;

    move-object/from16 v7, p5

    invoke-virtual {v2, v7}, Lcom/dwdbsdk/Bean/DW/LocBean;->setRx(Ljava/lang/String;)V

    if-eqz v8, :cond_0

    .line 140
    iget-object v2, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v1, v8}, Lcom/dwdbsdk/Bean/DW/LocBean;->setBeamList(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    move-object v4, p3

    :cond_2
    move-object/from16 v7, p5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p5

    .line 145
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v1

    int-to-long v1, v1

    .line 146
    iget v3, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->h:I

    if-nez v3, :cond_5

    const-wide/16 v9, 0x1c

    cmp-long v3, v1, v9

    if-eqz v3, :cond_4

    const-wide/16 v9, 0x29

    cmp-long v3, v1, v9

    if-eqz v3, :cond_4

    const-wide/16 v9, 0x4f

    cmp-long v3, v1, v9

    if-nez v3, :cond_7

    .line 148
    :cond_4
    iget-object v9, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    new-instance v10, Lcom/dwdbsdk/Bean/DW/LocBean;

    const-string v6, ""

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/dwdbsdk/Bean/DW/LocBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-wide/16 v9, 0x1

    cmp-long v3, v1, v9

    if-eqz v3, :cond_6

    const-wide/16 v9, 0x3

    cmp-long v3, v1, v9

    if-eqz v3, :cond_6

    const-wide/16 v9, 0x4e

    cmp-long v3, v1, v9

    if-nez v3, :cond_7

    .line 151
    :cond_6
    iget-object v9, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    new-instance v10, Lcom/dwdbsdk/Bean/DW/LocBean;

    const-string v6, ""

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/dwdbsdk/Bean/DW/LocBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/BsBeam;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v9, p1

    move-object/from16 v10, p3

    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 92
    :goto_0
    iget-object v2, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v12, ""

    if-ge v1, v2, :cond_2

    .line 93
    iget-object v2, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/LocBean;->getPci()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, p4

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/LocBean;->getArfcn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/LocBean;

    move-object/from16 v7, p5

    invoke-virtual {v2, v7}, Lcom/dwdbsdk/Bean/DW/LocBean;->setRx(Ljava/lang/String;)V

    .line 95
    iget-object v2, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/LocBean;->getTac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    iget-object v2, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v2, p1}, Lcom/dwdbsdk/Bean/DW/LocBean;->setTac(Ljava/lang/String;)V

    .line 97
    iget-object v2, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/LocBean;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lcom/dwdbsdk/Bean/DW/LocBean;->setEci(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 99
    iget-object v2, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/LocBean;

    .line 100
    iget-object v3, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 101
    iget-object v1, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v1, v11, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    move-object/from16 v3, p2

    move-object/from16 v7, p5

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    .line 107
    new-instance v13, Lcom/dwdbsdk/Bean/DW/LocBean;

    const-string v6, ""

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/dwdbsdk/Bean/DW/LocBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 108
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/dwdbsdk/Bean/NrBand;->earfcn2band(I)I

    move-result v1

    int-to-long v1, v1

    .line 109
    iget v3, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->h:I

    if-nez v3, :cond_5

    const-wide/16 v3, 0x1c

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const-wide/16 v3, 0x29

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const-wide/16 v3, 0x4f

    cmp-long v5, v1, v3

    if-nez v5, :cond_a

    .line 111
    :cond_3
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    iget-object v1, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_4
    iget-object v1, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v1, v11, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    const-wide/16 v3, 0x3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    const-wide/16 v3, 0x4e

    cmp-long v5, v1, v3

    if-nez v5, :cond_a

    .line 119
    :cond_6
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 120
    iget-object v1, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_7
    iget-object v1, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v1, v11, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 123
    invoke-virtual {p0}, Lcom/dwdbsdk/Arfcn/Nr5g;->i()Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->m:Z

    if-nez v1, :cond_a

    const-string v1, "633984"

    .line 124
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x6e

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 125
    iput v2, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    const v1, 0x99240

    .line 126
    iput v1, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->k:I

    .line 127
    iput-boolean v3, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->m:Z

    .line 128
    iput v11, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->f:I

    goto :goto_1

    :cond_8
    const-string v1, "627264"

    .line 129
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 130
    iput v2, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    const v1, 0x9ac80

    .line 131
    iput v1, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->k:I

    .line 132
    iput-boolean v3, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->m:Z

    .line 133
    iput v11, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->f:I

    goto :goto_1

    .line 135
    :cond_9
    iput-boolean v11, v0, Lcom/dwdbsdk/Arfcn/Nr5g;->m:Z

    :cond_a
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 166
    iput-boolean p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->l:Z

    .line 167
    invoke-static {}, Lcom/dwdbsdk/Util/SdkPref;->build()Lcom/dwdbsdk/Util/SdkPref;

    move-result-object p1

    iget-boolean v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->l:Z

    invoke-virtual {p1, v0}, Lcom/dwdbsdk/Util/SdkPref;->setArfcnMode(Z)V

    const/16 p1, 0x69

    .line 168
    iput p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    .line 169
    invoke-virtual {p0}, Lcom/dwdbsdk/Arfcn/Nr5g;->h()V

    .line 170
    invoke-virtual {p0}, Lcom/dwdbsdk/Arfcn/Nr5g;->o()V

    .line 171
    invoke-virtual {p0}, Lcom/dwdbsdk/Arfcn/Nr5g;->m()V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 3
    iget v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AT+C5GCELLCFG =\"arfcn\",1,1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ARFCN:getArfcn(): arfcn = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/LocBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->d:I

    .line 7
    iget v1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    const/16 v2, 0x64

    const-string v3, "ERROR"

    const/4 v4, 0x1

    if-ne v2, v1, :cond_1

    const-string v1, "READY"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iput v4, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->g:I

    .line 10
    iput v4, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    .line 11
    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->e:I

    goto/16 :goto_2

    .line 12
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 13
    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->g:I

    .line 14
    iput v4, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_1
    const/16 v2, 0x6f

    if-ne v2, v1, :cond_2

    .line 17
    iput v4, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_2
    const/16 v2, 0x6a

    const-string v5, "OK"

    if-ne v2, v1, :cond_3

    .line 20
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/16 p1, 0x9

    .line 21
    iput p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->d:I

    .line 22
    iput v4, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_3
    const/16 v2, 0x69

    if-ne v2, v1, :cond_4

    .line 25
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 26
    iput v4, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_4
    const/16 v2, 0x6e

    if-ne v4, v1, :cond_5

    const-string v0, "71OK"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 30
    iput v2, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_5
    const/4 v6, 0x3

    const/16 v7, 0x6c

    const/16 v8, 0x6d

    if-ne v7, v1, :cond_8

    .line 33
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34
    iget p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->g:I

    if-ne p1, v4, :cond_6

    .line 35
    iput v8, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    .line 37
    :cond_6
    iput v6, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    .line 39
    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 40
    iput v2, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_8
    const/16 v9, 0x6b

    if-ne v2, v1, :cond_c

    .line 43
    iget-boolean v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->m:Z

    if-eqz v0, :cond_a

    .line 44
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 45
    iput v9, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    .line 46
    :cond_9
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 47
    iput v9, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    .line 50
    :cond_a
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 51
    iput v7, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    .line 52
    :cond_b
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 53
    iput v7, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_c
    const/16 v7, 0x67

    if-ne v6, v1, :cond_e

    .line 57
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 58
    iput v7, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    .line 59
    :cond_d
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 60
    iput v2, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_e
    if-ne v9, v1, :cond_10

    if-eqz p1, :cond_16

    .line 64
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 65
    iput v8, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    .line 66
    :cond_f
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 67
    iput v2, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_10
    const/16 v2, 0x68

    if-ne v7, v1, :cond_11

    .line 71
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 72
    iput v2, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto :goto_2

    :cond_11
    if-ne v2, v1, :cond_12

    .line 75
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 76
    iput v8, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto :goto_2

    :cond_12
    if-ne v8, v1, :cond_16

    const-string v1, "CMGRMI=6ERROR"

    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 83
    iget p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->e:I

    const/4 v1, 0x5

    if-le p1, v1, :cond_14

    .line 84
    iput v4, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    .line 85
    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->e:I

    .line 86
    iput-boolean v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->m:Z

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ARFCN: 6ERROR: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_13
    const-string v0, "Serving_Cell"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 91
    invoke-virtual {p0}, Lcom/dwdbsdk/Arfcn/Nr5g;->h()V

    .line 92
    invoke-virtual {p0, p1}, Lcom/dwdbsdk/Arfcn/Nr5g;->c(Ljava/lang/String;)V

    .line 95
    :cond_14
    :goto_0
    invoke-virtual {p0}, Lcom/dwdbsdk/Arfcn/Nr5g;->f()V

    .line 96
    iget-object p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dwdbsdk/Interface/Nr5gScanArfcnListener;

    if-eqz v0, :cond_15

    .line 98
    iget-object v1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/dwdbsdk/Interface/Nr5gScanArfcnListener;->onNr5gScanArfcnRsp(Ljava/util/List;)V

    goto :goto_1

    .line 101
    :cond_16
    :goto_2
    iget-object p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    return-object p1
.end method

.method public b(Lcom/dwdbsdk/Interface/Nr5gScanArfcnListener;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->n:I

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7

    const-string v0, "\\+CMGRMI:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMGRMI:5G_NGHBC"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "5G_NGHBC"

    const-string v3, "Serving_Cell"

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 4
    :goto_0
    array-length p1, v0

    if-ge v4, p1, :cond_8

    .line 5
    aget-object p1, v0, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    aget-object p1, v0, v4

    invoke-virtual {p0, p1}, Lcom/dwdbsdk/Arfcn/Nr5g;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    aget-object p1, v0, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    aget-object p1, v0, v4

    invoke-virtual {p0, p1}, Lcom/dwdbsdk/Arfcn/Nr5g;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "CNWSEARCH:5G_NGHBC"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    array-length p1, v0

    const/4 v1, 0x2

    if-le p1, v1, :cond_8

    .line 13
    :goto_2
    array-length p1, v0

    if-ge v1, p1, :cond_8

    .line 14
    aget-object p1, v0, v1

    const-string v5, "\\+CNWSEARCH:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    .line 15
    :goto_3
    array-length v6, p1

    if-ge v5, v6, :cond_5

    .line 16
    aget-object v6, p1, v5

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 17
    aget-object v6, p1, v5

    invoke-virtual {p0, v6}, Lcom/dwdbsdk/Arfcn/Nr5g;->f(Ljava/lang/String;)V

    goto :goto_4

    .line 18
    :cond_3
    aget-object v6, p1, v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 19
    aget-object v6, p1, v5

    invoke-virtual {p0, v6}, Lcom/dwdbsdk/Arfcn/Nr5g;->a(Ljava/lang/String;)V

    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25
    :cond_6
    :goto_5
    array-length p1, v0

    if-ge v4, p1, :cond_8

    .line 26
    aget-object p1, v0, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 27
    aget-object p1, v0, v4

    invoke-virtual {p0, p1}, Lcom/dwdbsdk/Arfcn/Nr5g;->f(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/LocBean;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dwdbsdk/Bean/DW/LocBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->d:I

    .line 2
    iget v1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    const-string v0, "71OK"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 4
    iput v2, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_0
    const/4 v4, 0x2

    const-string v5, "OK"

    if-ne v4, v1, :cond_1

    .line 7
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 8
    iput v2, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_1
    const/16 v6, 0x69

    if-ne v6, v1, :cond_2

    .line 11
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 12
    iput v3, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_2
    const/16 v6, 0x67

    if-ne v2, v1, :cond_3

    .line 15
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 16
    iput v6, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_3
    const/4 v2, 0x4

    const/4 v7, 0x6

    if-ne v2, v1, :cond_4

    .line 19
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 20
    iput v7, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_4
    const/4 v8, 0x5

    if-ne v8, v1, :cond_6

    .line 23
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    iput v4, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_5
    const-string v0, "ERROR"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 26
    iput v8, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    .line 27
    iget p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->e:I

    if-lt p1, v4, :cond_d

    .line 28
    iput v3, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto/16 :goto_2

    :cond_6
    const/16 v4, 0x68

    if-ne v6, v1, :cond_7

    .line 32
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 33
    iput v4, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto :goto_2

    :cond_7
    if-ne v4, v1, :cond_8

    .line 36
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 37
    iput v2, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto :goto_2

    :cond_8
    if-ne v7, v1, :cond_d

    const-string v1, "CNWSEARCH=\"nr5g\",2OK"

    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 43
    iget p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->e:I

    if-lt p1, v7, :cond_d

    .line 44
    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->e:I

    .line 45
    iput v8, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    goto :goto_2

    :cond_9
    const-string v1, "mcc:"

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 48
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, ""

    .line 49
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 51
    :cond_a
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 52
    array-length v1, p1

    if-lez v1, :cond_b

    .line 53
    iget-object v1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 54
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_b

    .line 55
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/dwdbsdk/Arfcn/Nr5g;->e(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_b
    iget-object p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dwdbsdk/Interface/Nr5gScanArfcnListener;

    if-eqz v0, :cond_c

    .line 60
    iget-object v1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/dwdbsdk/Interface/Nr5gScanArfcnListener;->onNr5gScanArfcnRsp(Ljava/util/List;)V

    goto :goto_1

    .line 64
    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    return-object p1
.end method

.method public e()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->o:I

    return v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "-110"

    const-string v0, "-"

    const-string v3, " "

    const-string v4, ""

    move-object/from16 v5, p1

    .line 1
    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    .line 2
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3
    array-length v5, v3

    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x0

    .line 6
    aget-object v6, v3, v5

    const-string v7, "mcc:"

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const/4 v6, 0x1

    .line 7
    aget-object v7, v3, v6

    const-string v8, "mnc:"

    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    .line 8
    aget-object v9, v3, v8

    const-string v10, "Tac:"

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x3

    .line 9
    aget-object v9, v3, v9

    const-string v10, "cellid:"

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const/4 v9, 0x4

    .line 10
    aget-object v9, v3, v9

    const-string v10, "pci:"

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    const/4 v9, 0x5

    .line 11
    aget-object v9, v3, v9

    const-string v10, "freq:"

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const/4 v9, 0x6

    .line 12
    aget-object v3, v3, v9

    const-string v9, "rsrp:"

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 17
    :cond_1
    :try_start_0
    invoke-static {v3}, Le/a;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 18
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v9, 0x82

    cmp-long v11, v4, v9

    if-lez v11, :cond_2

    goto :goto_0

    .line 21
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    move-object/from16 v17, v2

    .line 31
    invoke-static {v12}, Le/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v13}, Le/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v14}, Le/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v15}, Le/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 35
    :cond_4
    iget v0, v1, Lcom/dwdbsdk/Arfcn/Nr5g;->h:I

    if-ne v0, v6, :cond_5

    const-string v0, "01"

    .line 36
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 37
    new-instance v0, Lcom/dwdbsdk/Bean/DW/LocBean;

    const-string v16, ""

    const/16 v18, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Lcom/dwdbsdk/Bean/DW/LocBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 38
    iget-object v2, v1, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-ne v0, v8, :cond_6

    const-string v0, "11"

    .line 41
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 42
    new-instance v0, Lcom/dwdbsdk/Bean/DW/LocBean;

    const-string v16, ""

    const/16 v18, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Lcom/dwdbsdk/Bean/DW/LocBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 43
    iget-object v2, v1, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    :cond_6
    new-instance v0, Lcom/dwdbsdk/Bean/DW/LocBean;

    const-string v16, ""

    const/16 v18, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Lcom/dwdbsdk/Bean/DW/LocBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 47
    iget-object v2, v1, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 80
    :goto_0
    iget-object v3, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 81
    iget-object v3, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/LocBean;->getArfcn()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/LocBean;->getArfcn()Ljava/lang/String;

    move-result-object v3

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 84
    iget-object v5, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/DW/LocBean;->getArfcn()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->c:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v6}, Lcom/dwdbsdk/Bean/DW/LocBean;->getArfcn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    .line 85
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/DW/LocBean;->getPci()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->c:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v6}, Lcom/dwdbsdk/Bean/DW/LocBean;->getPci()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    .line 86
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/DW/LocBean;->getTac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 88
    iget-object v5, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dwdbsdk/Bean/DW/LocBean;

    iget-object v6, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->c:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v6}, Lcom/dwdbsdk/Bean/DW/LocBean;->getTac()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/dwdbsdk/Bean/DW/LocBean;->setTac(Ljava/lang/String;)V

    .line 89
    iget-object v5, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dwdbsdk/Bean/DW/LocBean;

    iget-object v6, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->c:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v3}, Lcom/dwdbsdk/Bean/DW/LocBean;->getEci()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/dwdbsdk/Bean/DW/LocBean;->setEci(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 91
    iget-object v3, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dwdbsdk/Bean/DW/LocBean;

    .line 92
    iget-object v5, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v5}, Lcom/dwdbsdk/Bean/DW/LocBean;->getTac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    iget-object v4, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 94
    iget-object v4, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v4, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 96
    :cond_0
    iget-object v4, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 97
    iget-object v4, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v9, p0

    const-string v0, ","

    move-object/from16 v1, p1

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v10, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    aget-object v1, v0, v10

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_0

    return-void

    .line 9
    :cond_0
    array-length v1, v0

    if-lt v1, v2, :cond_1

    aget-object v1, v0, v3

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_1

    return-void

    .line 15
    :cond_1
    array-length v1, v0

    const/4 v3, 0x4

    const-string v11, ""

    if-lt v1, v3, :cond_4

    aget-object v1, v0, v2

    if-eqz v1, :cond_4

    const-string v2, "0x"

    .line 16
    invoke-virtual {v1, v2, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    .line 17
    invoke-static {v1, v2}, Le/a;->a(Ljava/lang/String;I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, -0x1

    cmp-long v2, v6, v4

    if-eqz v2, :cond_2

    .line 19
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 21
    :cond_2
    invoke-static {v1}, Le/a;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    move-object v13, v1

    goto :goto_0

    :cond_4
    move-object v13, v11

    .line 25
    :goto_0
    array-length v1, v0

    const/4 v12, 0x5

    if-lt v1, v12, :cond_6

    aget-object v1, v0, v3

    if-eqz v1, :cond_6

    .line 27
    invoke-static {v1}, Le/a;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    return-void

    :cond_5
    move-object v14, v1

    goto :goto_1

    :cond_6
    move-object v14, v11

    .line 31
    :goto_1
    array-length v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_8

    aget-object v1, v0, v12

    if-eqz v1, :cond_8

    .line 33
    invoke-static {v1}, Le/a;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    move-object/from16 v16, v1

    goto :goto_2

    :cond_8
    move-object/from16 v16, v11

    .line 37
    :goto_2
    array-length v1, v0

    const/4 v3, 0x7

    if-lt v1, v3, :cond_a

    aget-object v1, v0, v2

    if-eqz v1, :cond_a

    .line 39
    invoke-static {v1}, Le/a;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    return-void

    :cond_9
    move-object v15, v1

    goto :goto_3

    :cond_a
    move-object v15, v11

    .line 43
    :goto_3
    array-length v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_e

    aget-object v1, v0, v3

    if-eqz v1, :cond_e

    const-string v2, "."

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 47
    :cond_b
    aget-object v0, v0, v3

    const-string v1, "-"

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Le/a;->c(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "-110"

    if-nez v2, :cond_d

    :cond_c
    :goto_4
    move-object/from16 v17, v3

    goto :goto_5

    .line 52
    :cond_d
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    const/16 v2, 0x82

    if-ge v0, v2, :cond_c

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_e
    move-object/from16 v17, v11

    :goto_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    .line 65
    invoke-virtual/range {v1 .. v8}, Lcom/dwdbsdk/Arfcn/Nr5g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    .line 66
    iget v0, v9, Lcom/dwdbsdk/Arfcn/Nr5g;->f:I

    add-int/2addr v0, v10

    iput v0, v9, Lcom/dwdbsdk/Arfcn/Nr5g;->f:I

    const/4 v1, 0x0

    if-le v0, v12, :cond_f

    .line 67
    iput v1, v9, Lcom/dwdbsdk/Arfcn/Nr5g;->f:I

    .line 68
    iget-boolean v0, v9, Lcom/dwdbsdk/Arfcn/Nr5g;->m:Z

    if-eqz v0, :cond_f

    iput-boolean v1, v9, Lcom/dwdbsdk/Arfcn/Nr5g;->m:Z

    .line 70
    :cond_f
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 71
    iget-object v0, v9, Lcom/dwdbsdk/Arfcn/Nr5g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_6
    if-ge v1, v0, :cond_11

    .line 73
    iget-object v2, v9, Lcom/dwdbsdk/Arfcn/Nr5g;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/LocBean;->getTac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v9, Lcom/dwdbsdk/Arfcn/Nr5g;->c:Ljava/util/List;

    .line 74
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dwdbsdk/Bean/DW/LocBean;

    invoke-virtual {v2}, Lcom/dwdbsdk/Bean/DW/LocBean;->getEci()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-void

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 78
    :cond_11
    iget-object v0, v9, Lcom/dwdbsdk/Arfcn/Nr5g;->c:Ljava/util/List;

    new-instance v1, Lcom/dwdbsdk/Bean/DW/LocBean;

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lcom/dwdbsdk/Bean/DW/LocBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/dwdbsdk/Util/SdkPref;->build()Lcom/dwdbsdk/Util/SdkPref;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dwdbsdk/Util/SdkPref;->getArfcnMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->l:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->d:I

    .line 4
    iget-object v1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    .line 6
    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->e:I

    .line 7
    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->g:I

    .line 8
    iput-boolean v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->m:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->k:I

    .line 10
    invoke-virtual {p0}, Lcom/dwdbsdk/Arfcn/Nr5g;->h()V

    .line 11
    invoke-virtual {p0}, Lcom/dwdbsdk/Arfcn/Nr5g;->o()V

    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->l:Z

    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CPIN?\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x6a

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CPOF\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x69

    if-ne v0, v1, :cond_2

    .line 6
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CRESET\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x6f

    if-ne v0, v1, :cond_3

    .line 8
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+SIMCOMATI\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 10
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CNMP=71\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x6c

    if-ne v0, v1, :cond_5

    .line 12
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CMGRMI\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "AT+C5GCELLCFG=\"unlock\"\r"

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_6

    .line 14
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    .line 16
    iget v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->h:I

    if-nez v0, :cond_7

    .line 17
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CSYSSEL=\"nr5g_band\",28:41:79\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_7
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CSYSSEL=\"nr5g_band\",1:3:78\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/16 v3, 0x6b

    if-ne v0, v3, :cond_a

    .line 22
    invoke-virtual {p0}, Lcom/dwdbsdk/Arfcn/Nr5g;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 24
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ld/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_9
    iput v2, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->m:Z

    .line 28
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const/16 v1, 0x67

    if-ne v0, v1, :cond_b

    .line 31
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CFUN=0\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const/16 v1, 0x68

    if-ne v0, v1, :cond_c

    .line 33
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CFUN=1\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const/16 v1, 0x6d

    if-ne v0, v1, :cond_d

    .line 35
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CMGRMI=6\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    :cond_d
    :goto_0
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->h:I

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CSYSSEL=\"nr5g_band\",28:41:79\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CSYSSEL=\"nr5g_band\",1:3:78\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 8
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CNMP=71\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x69

    if-ne v0, v1, :cond_3

    .line 11
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CRESET\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x67

    if-ne v0, v1, :cond_4

    .line 14
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CFUN=0\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x68

    if-ne v0, v1, :cond_5

    .line 16
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CFUN=1\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 18
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CSYSSEL\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 21
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CNWSEARCH=\"nr5g\",1\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    .line 24
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CNWSEARCH=\"nr5g\",0\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    .line 27
    invoke-static {}, Ld/a;->a()Ld/a;

    move-result-object v0

    const-string v1, "AT+CNWSEARCH=\"nr5g\",2\r"

    invoke-virtual {v0, v1}, Ld/a;->b(Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->i:Ljava/util/Timer;

    if-nez v0, :cond_0

    const-string v0, "ARFCN: startTimeDelay()"

    .line 2
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->i:Ljava/util/Timer;

    .line 4
    new-instance v2, Lcom/dwdbsdk/Arfcn/Nr5g$1;

    invoke-direct {v2, p0}, Lcom/dwdbsdk/Arfcn/Nr5g$1;-><init>(Lcom/dwdbsdk/Arfcn/Nr5g;)V

    const-wide/16 v3, 0xa

    const-wide/16 v5, 0x7d0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/dwdbsdk/Arfcn/Nr5g;->o()V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/dwdbsdk/Arfcn/Nr5g;->p:Lcom/dwdbsdk/Arfcn/Nr5g;

    return-void
.end method

.method public final o()V
    .locals 1

    const-string v0, "ARFCN: stopTimeDelay()"

    .line 1
    invoke-static {v0}, Lcom/dwdbsdk/Logcat/SdkLog;->E(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->i:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/dwdbsdk/Arfcn/Nr5g;->i:Ljava/util/Timer;

    :cond_0
    return-void
.end method
