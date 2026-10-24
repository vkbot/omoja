.class public final Lp/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/r;
.implements Lp/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp/r<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;",
        "Lp/a$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/a$c;->a:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public final a(Lp/u;)Lp/q;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/u;",
            ")",
            "Lp/q<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lp/a;

    iget-object v0, p0, Lp/a$c;->a:Landroid/content/res/AssetManager;

    invoke-direct {p1, v0, p0}, Lp/a;-><init>(Landroid/content/res/AssetManager;Lp/a$a;)V

    return-object p1
.end method

.method public final b(Landroid/content/res/AssetManager;Ljava/lang/String;)Lj/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Lj/d<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p0, Lj/n;

    invoke-direct {p0, p1, p2}, Lj/b;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object p0
.end method
