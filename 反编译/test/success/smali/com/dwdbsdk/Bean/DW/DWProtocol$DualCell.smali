.class public Lcom/dwdbsdk/Bean/DW/DWProtocol$DualCell;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dwdbsdk/Bean/DW/DWProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DualCell"
.end annotation


# static fields
.field public static final DUAL:I = 0x2

.field public static final SINGLE:I = 0x1


# instance fields
.field public final synthetic a:Lcom/dwdbsdk/Bean/DW/DWProtocol;


# direct methods
.method public constructor <init>(Lcom/dwdbsdk/Bean/DW/DWProtocol;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dwdbsdk/Bean/DW/DWProtocol$DualCell;->a:Lcom/dwdbsdk/Bean/DW/DWProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
