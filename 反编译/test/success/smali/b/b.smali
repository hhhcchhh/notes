.class public Lb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Bean/DW/DWHeader;IIIIIIIIIIIIIIIIJIIIIIIIIIIIIIII)V
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
    sget v16, Lcom/dwdbsdk/Bean/DW/DWHeader;->headLength:I

    add-int/lit8 v16, v16, 0x6c

    add-int/lit8 v15, v16, 0x30

    iput v15, v0, Lb/b;->a:I

    .line 3
    new-array v15, v15, [B

    iput-object v15, v0, Lb/b;->b:[B

    .line 12
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v0, "gnbCfg["

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",  "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p16

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p17

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p18

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p20

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p21

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p22

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p23

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p24

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p25

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p26

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p27

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p28

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p29

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p30

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p31

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p32

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p33

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p34

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/dwdbsdk/Logcat/SdkLog;->I(Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v14, p0

    .line 17
    iput v15, v14, Lb/b;->c:I

    .line 18
    :goto_0
    iget v0, v14, Lb/b;->a:I

    if-ge v15, v0, :cond_0

    .line 19
    iget-object v0, v14, Lb/b;->b:[B

    const/16 v16, 0x0

    aput-byte v16, v0, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getHeaderMsg()[B

    move-result-object v0

    const/4 v15, 0x0

    .line 23
    :goto_1
    array-length v3, v0

    if-ge v15, v3, :cond_1

    .line 24
    iget-object v3, v14, Lb/b;->b:[B

    aget-byte v17, v0, v15

    aput-byte v17, v3, v15

    .line 25
    iget v3, v14, Lb/b;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v14, Lb/b;->c:I

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v14, v1}, Lb/b;->a(I)V

    .line 29
    invoke-virtual {v14, v2}, Lb/b;->a(I)V

    move/from16 v0, p4

    .line 30
    invoke-virtual {v14, v0}, Lb/b;->a(I)V

    .line 31
    invoke-virtual {v14, v4}, Lb/b;->a(I)V

    .line 32
    invoke-virtual {v14, v5}, Lb/b;->a(I)V

    .line 33
    invoke-virtual {v14, v6}, Lb/b;->a(I)V

    .line 34
    invoke-virtual {v14, v7}, Lb/b;->a(I)V

    move/from16 v0, p9

    .line 35
    invoke-virtual {v14, v0}, Lb/b;->a(I)V

    .line 36
    invoke-virtual {v14, v9}, Lb/b;->a(I)V

    .line 37
    invoke-virtual {v14, v10}, Lb/b;->a(I)V

    .line 38
    invoke-virtual {v14, v11}, Lb/b;->a(I)V

    .line 39
    invoke-virtual {v14, v12}, Lb/b;->a(I)V

    move/from16 v0, p14

    move-wide/from16 v1, p18

    .line 40
    invoke-virtual {v14, v0}, Lb/b;->a(I)V

    move/from16 v0, p15

    .line 41
    invoke-virtual {v14, v0}, Lb/b;->a(I)V

    move/from16 v0, p16

    move/from16 v3, p17

    .line 42
    invoke-virtual {v14, v0}, Lb/b;->a(I)V

    .line 43
    invoke-virtual {v14, v3}, Lb/b;->a(I)V

    .line 44
    invoke-virtual {v14, v1, v2}, Lb/b;->a(J)V

    .line 45
    invoke-virtual {v14, v8}, Lb/b;->a(I)V

    .line 46
    invoke-virtual {v14, v13}, Lb/b;->a(I)V

    move/from16 v0, p22

    move/from16 v1, p23

    .line 47
    invoke-virtual {v14, v0}, Lb/b;->a(I)V

    move/from16 v0, p25

    .line 48
    invoke-virtual {v14, v0}, Lb/b;->a(I)V

    move/from16 v0, p26

    move/from16 v2, p27

    .line 49
    invoke-virtual {v14, v0}, Lb/b;->a(I)V

    .line 50
    invoke-virtual {v14, v2}, Lb/b;->a(I)V

    move/from16 v0, p28

    move/from16 v2, p29

    .line 51
    invoke-virtual {v14, v0}, Lb/b;->a(I)V

    .line 52
    invoke-virtual {v14, v2}, Lb/b;->a(I)V

    move/from16 v0, p30

    move/from16 v2, p31

    .line 53
    invoke-virtual {v14, v0}, Lb/b;->a(I)V

    .line 54
    invoke-virtual {v14, v2}, Lb/b;->a(I)V

    move/from16 v0, p32

    move/from16 v2, p33

    .line 55
    invoke-virtual {v14, v0}, Lb/b;->a(I)V

    .line 56
    invoke-virtual {v14, v2}, Lb/b;->a(I)V

    move/from16 v0, p34

    .line 57
    invoke-virtual {v14, v0}, Lb/b;->a(I)V

    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x18

    if-ge v0, v2, :cond_2

    .line 60
    iget-object v2, v14, Lb/b;->b:[B

    iget v3, v14, Lb/b;->c:I

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 61
    iput v3, v14, Lb/b;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 63
    invoke-virtual {v14, v1}, Lb/b;->a(I)V

    move/from16 v0, p24

    .line 64
    invoke-virtual {v14, v0}, Lb/b;->a(I)V

    .line 66
    iget v0, v14, Lb/b;->a:I

    add-int/lit8 v0, v0, -0x4

    iput v0, v14, Lb/b;->c:I

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/dwdbsdk/Bean/DW/DWHeader;->getFooterMsg()[B

    move-result-object v0

    .line 68
    array-length v1, v0

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v1, :cond_3

    aget-byte v2, v0, v15

    .line 69
    iget-object v3, v14, Lb/b;->b:[B

    iget v4, v14, Lb/b;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 70
    iput v4, v14, Lb/b;->c:I

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_3
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
    iget-object v3, p0, Lb/b;->b:[B

    iget v4, p0, Lb/b;->c:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iput v4, p0, Lb/b;->c:I

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
    iget-object v2, p0, Lb/b;->b:[B

    iget v3, p0, Lb/b;->c:I

    aput-byte v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 8
    iput v3, p0, Lb/b;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()[B
    .locals 1

    .line 9
    iget-object v0, p0, Lb/b;->b:[B

    return-object v0
.end method
