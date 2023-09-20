.class Lcom/simdo/dw_db_s/Util/FullScreenUtil$FullScreenUtilBuilder;
.super Ljava/lang/Object;
.source "FullScreenUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simdo/dw_db_s/Util/FullScreenUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FullScreenUtilBuilder"
.end annotation


# static fields
.field private static final instance:Lcom/simdo/dw_db_s/Util/FullScreenUtil;


# direct methods
.method static bridge synthetic -$$Nest$sfgetinstance()Lcom/simdo/dw_db_s/Util/FullScreenUtil;
    .locals 1

    sget-object v0, Lcom/simdo/dw_db_s/Util/FullScreenUtil$FullScreenUtilBuilder;->instance:Lcom/simdo/dw_db_s/Util/FullScreenUtil;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/simdo/dw_db_s/Util/FullScreenUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/simdo/dw_db_s/Util/FullScreenUtil;-><init>(Lcom/simdo/dw_db_s/Util/FullScreenUtil-IA;)V

    sput-object v0, Lcom/simdo/dw_db_s/Util/FullScreenUtil$FullScreenUtilBuilder;->instance:Lcom/simdo/dw_db_s/Util/FullScreenUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
