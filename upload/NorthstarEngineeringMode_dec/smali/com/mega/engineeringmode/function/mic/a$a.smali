.class public final Lcom/mega/engineeringmode/function/mic/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/mic/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mega/engineeringmode/function/mic/a;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/mic/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/mic/a$a;->c:Lcom/mega/engineeringmode/function/mic/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/mic/a$a;->c:Lcom/mega/engineeringmode/function/mic/a;

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/mic/a;->b()V

    return-void
.end method
