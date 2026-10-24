.class public final Ll/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ll/j$d;

.field public final b:Lg0/a$c;

.field public c:I


# direct methods
.method public constructor <init>(Ll/m$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll/m$a$a;

    invoke-direct {v0, p0}, Ll/m$a$a;-><init>(Ll/m$a;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lg0/a;->a(ILg0/a$b;)Lg0/a$c;

    move-result-object v0

    iput-object v0, p0, Ll/m$a;->b:Lg0/a$c;

    iput-object p1, p0, Ll/m$a;->a:Ll/j$d;

    return-void
.end method
