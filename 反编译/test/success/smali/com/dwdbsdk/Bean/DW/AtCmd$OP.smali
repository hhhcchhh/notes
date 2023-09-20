.class public Lcom/dwdbsdk/Bean/DW/AtCmd$OP;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/Bean/DW/AtCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OP"
.end annotation


# static fields
.field public static final MOBILE:I = 0x0

.field public static final TELECOM:I = 0x2

.field public static final UNICOM:I = 0x1


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/Bean/DW/AtCmd;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Bean/DW/AtCmd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/AtCmd$OP;->a:Lcom/dwdbsdk/Bean/DW/AtCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
