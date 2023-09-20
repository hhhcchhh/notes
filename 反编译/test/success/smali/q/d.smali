.class public final Lq/d;
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

.field public static final p:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const-string v0, "USER"

    const-string v1, "PASS"

    const-string v2, "QUIT"

    const-string v3, "STAT"

    const-string v4, "LIST"

    const-string v5, "RETR"

    const-string v6, "DELE"

    const-string v7, "NOOP"

    const-string v8, "RSET"

    const-string v9, "APOP"

    const-string v10, "TOP"

    const-string v11, "UIDL"

    const-string v12, "CAPA"

    const-string v13, "AUTH"

    .line 1
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lq/d;->p:[Ljava/lang/String;

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
    sget-object v0, Lq/d;->p:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
