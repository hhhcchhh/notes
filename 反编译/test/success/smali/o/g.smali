.class public final Lo/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static final j:I = 0x9

.field public static final k:I = 0xa

.field public static final l:I = 0xb

.field public static final m:I = 0xc

.field public static final n:I = 0xd

.field public static final o:I = 0xe

.field public static final p:I = 0xf

.field public static final q:I = 0x10

.field public static final r:I = 0x11

.field public static final s:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    const-string v0, "ARTICLE"

    const-string v1, "BODY"

    const-string v2, "GROUP"

    const-string v3, "HEAD"

    const-string v4, "HELP"

    const-string v5, "IHAVE"

    const-string v6, "LAST"

    const-string v7, "LIST"

    const-string v8, "NEWGROUPS"

    const-string v9, "NEWNEWS"

    const-string v10, "NEXT"

    const-string v11, "POST"

    const-string v12, "QUIT"

    const-string v13, "SLAVE"

    const-string v14, "STAT"

    const-string v15, "AUTHINFO"

    const-string v16, "XOVER"

    const-string v17, "XHDR"

    .line 1
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/g;->s:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lo/g;->s:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
