.class public final Lp/z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/r;
.implements Lp/z$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp/r<",
        "Landroid/net/Uri;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lp/z$c<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/z$b;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final a(Lp/u;)Lp/q;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/u;",
            ")",
            "Lp/q<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance p1, Lp/z;

    invoke-direct {p1, p0}, Lp/z;-><init>(Lp/z$c;)V

    return-object p1
.end method

.method public final b(Landroid/net/Uri;)Lj/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lj/d<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lj/i;

    iget-object p0, p0, Lp/z$b;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, p1}, Lj/l;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method
