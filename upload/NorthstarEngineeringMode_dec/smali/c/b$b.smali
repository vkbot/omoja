.class public final Lc/b$b;
.super Lc/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lc/b;


# direct methods
.method public constructor <init>(Lc/b;)V
    .locals 0

    iput-object p1, p0, Lc/b$b;->b:Lc/b;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "android.support.v4.os.IResultReceiver"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final l(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lc/b$b;->b:Lc/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lc/b;->a(ILandroid/os/Bundle;)V

    return-void
.end method
