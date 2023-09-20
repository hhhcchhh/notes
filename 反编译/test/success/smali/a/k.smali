.class public La/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>(IIIIIIIIIIIIIIIII)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p16

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v16, Lcom/dwdbsdk/Bean/DB/DBHeader;->headLength:I

    add-int/lit8 v16, v16, 0x50

    add-int/lit8 v15, v16, 0x8

    iput v15, v0, La/k;->a:I

    .line 3
    new-array v15, v15, [B

    iput-object v15, v0, La/k;->b:[B

    .line 9
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v0, "MsgStartScan  dl_arfcn = "

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ul_arfcn = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p16

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/dwdbsdk/Logcat/SdkLog;->D(Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object/from16 v15, p0

    .line 13
    :goto_0
    iget v6, v15, La/k;->a:I

    if-ge v0, v6, :cond_0

    .line 14
    iget-object v6, v15, La/k;->b:[B

    const/4 v14, 0x0

    aput-byte v14, v6, v0

    add-int/lit8 v0, v0, 0x1

    move/from16 v14, p15

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 16
    iput v14, v15, La/k;->c:I

    move/from16 v0, p1

    .line 17
    invoke-static {v6, v0}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getHeader(II)[B

    move-result-object v0

    const/4 v14, 0x0

    .line 18
    :goto_1
    array-length v6, v0

    if-ge v14, v6, :cond_1

    .line 19
    iget-object v6, v15, La/k;->b:[B

    aget-byte v17, v0, v14

    aput-byte v17, v6, v14

    .line 20
    iget v6, v15, La/k;->c:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v15, La/k;->c:I

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 23
    invoke-virtual {v15, v6}, La/k;->a(I)V

    .line 24
    invoke-virtual {v15, v1}, La/k;->a(I)V

    .line 25
    invoke-virtual {v15, v2}, La/k;->a(I)V

    .line 26
    invoke-virtual {v15, v3}, La/k;->a(I)V

    .line 27
    invoke-virtual {v15, v4}, La/k;->a(I)V

    .line 28
    invoke-virtual {v15, v5}, La/k;->a(I)V

    move/from16 v0, p7

    .line 29
    invoke-virtual {v15, v0}, La/k;->a(I)V

    .line 30
    invoke-virtual {v15, v7}, La/k;->a(I)V

    .line 31
    invoke-virtual {v15, v8}, La/k;->a(I)V

    .line 32
    invoke-virtual {v15, v9}, La/k;->a(I)V

    .line 33
    invoke-virtual {v15, v10}, La/k;->a(I)V

    .line 34
    invoke-virtual {v15, v11}, La/k;->a(I)V

    .line 35
    invoke-virtual {v15, v12}, La/k;->a(I)V

    .line 36
    invoke-virtual {v15, v13}, La/k;->a(I)V

    move/from16 v0, p15

    .line 37
    invoke-virtual {v15, v0}, La/k;->a(I)V

    move/from16 v0, p16

    .line 38
    invoke-virtual {v15, v0}, La/k;->a(I)V

    move/from16 v0, p17

    .line 39
    invoke-virtual {v15, v0}, La/k;->a(I)V

    .line 41
    iget v0, v15, La/k;->a:I

    add-int/lit8 v0, v0, -0x4

    iput v0, v15, La/k;->c:I

    .line 42
    invoke-static {}, Lcom/dwdbsdk/Bean/DB/DBHeader;->getFooter()[B

    move-result-object v0

    .line 43
    array-length v1, v0

    :goto_2
    if-ge v6, v1, :cond_2

    aget-byte v2, v0, v6

    .line 44
    iget-object v3, v15, La/k;->b:[B

    iget v4, v15, La/k;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 45
    iput v4, v15, La/k;->c:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    invoke-static {p1}, Le/a;->a(I)[B

    move-result-object p1

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 3
    iget-object v3, p0, La/k;->b:[B

    iget v4, p0, La/k;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iput v4, p0, La/k;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 5
    invoke-static {p1, p2}, Le/a;->a(J)[B

    move-result-object p1

    .line 6
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p1, v0

    .line 7
    iget-object v2, p0, La/k;->b:[B

    iget v3, p0, La/k;->c:I

    aput-byte v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 8
    iput v3, p0, La/k;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()[B
    .locals 1

    .line 9
    iget-object v0, p0, La/k;->b:[B

    return-object v0
.end method
