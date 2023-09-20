.class public Ld/a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ld/a$a;


# direct methods
.method public constructor <init>(Ld/a$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld/a$a$b;->b:Ld/a$a;

    iput-object p2, p0, Ld/a$a$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/a$a$b;->b:Ld/a$a;

    iget-object v0, v0, Ld/a$a;->c:Ld/a;

    iget-object v1, p0, Ld/a$a$b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ld/a;->a(Ld/a;Ljava/lang/String;)V

    return-void
.end method
