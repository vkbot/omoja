.class public final Lv2/m;
.super Lv2/c$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lv2/l;


# direct methods
.method public constructor <init>(Lv2/l;)V
    .locals 0

    iput-object p1, p0, Lv2/m;->a:Lv2/l;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.mega.sdk.linkmanager.ICarPlayAIDL"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method
