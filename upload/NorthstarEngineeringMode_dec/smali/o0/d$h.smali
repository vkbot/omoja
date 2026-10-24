.class public final Lo0/d$h;
.super Lo0/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo0/d;


# direct methods
.method public constructor <init>(Lo0/d;)V
    .locals 0

    iput-object p1, p0, Lo0/d$h;->a:Lo0/d;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.mega.carlink.ICarLinkCallInfoChangeListener"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method
