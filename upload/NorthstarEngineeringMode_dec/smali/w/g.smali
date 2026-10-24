.class public final Lw/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/g<",
            "Li/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Li/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Li/b;->x:Li/b;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    invoke-static {v0, v1}, Li/g;->a(Ljava/lang/Object;Ljava/lang/String;)Li/g;

    move-result-object v0

    sput-object v0, Lw/g;->a:Li/g;

    const-string v0, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Li/g;->a(Ljava/lang/Object;Ljava/lang/String;)Li/g;

    move-result-object v0

    sput-object v0, Lw/g;->b:Li/g;

    return-void
.end method
