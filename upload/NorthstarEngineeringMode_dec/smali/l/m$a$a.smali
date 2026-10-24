.class public final Ll/m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg0/a$b<",
        "Ll/j<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll/m$a;


# direct methods
.method public constructor <init>(Ll/m$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/m$a$a;->a:Ll/m$a;

    return-void
.end method


# virtual methods
.method public final create()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ll/j;

    iget-object p0, p0, Ll/m$a$a;->a:Ll/m$a;

    iget-object v1, p0, Ll/m$a;->a:Ll/j$d;

    iget-object p0, p0, Ll/m$a;->b:Lg0/a$c;

    invoke-direct {v0, v1, p0}, Ll/j;-><init>(Ll/j$d;Lg0/a$c;)V

    return-object v0
.end method
