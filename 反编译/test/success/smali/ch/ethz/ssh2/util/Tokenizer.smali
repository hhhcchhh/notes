.class public Lch/ethz/ssh2/util/Tokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_3

    .line 7
    new-array v4, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    if-lt v1, v3, :cond_0

    return-object v4

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v2, v5, :cond_1

    const-string v5, ""

    .line 14
    aput-object v5, v4, v1

    goto :goto_2

    .line 18
    :cond_1
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 21
    :cond_2
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    add-int/2addr v5, v0

    move v2, v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
