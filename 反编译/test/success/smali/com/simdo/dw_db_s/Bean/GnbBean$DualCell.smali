.class public Lcom/simdo/dw_db_s/Bean/GnbBean$DualCell;
.super Ljava/lang/Object;
.source "GnbBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simdo/dw_db_s/Bean/GnbBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DualCell"
.end annotation


# static fields
.field public static final DUAL:I = 0x2

.field public static final SINGLE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/simdo/dw_db_s/Bean/GnbBean;


# direct methods
.method public constructor <init>(Lcom/simdo/dw_db_s/Bean/GnbBean;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/simdo/dw_db_s/Bean/GnbBean$DualCell;->this$0:Lcom/simdo/dw_db_s/Bean/GnbBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
