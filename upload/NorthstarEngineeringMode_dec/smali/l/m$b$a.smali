.class public final Ll/m$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/m$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg0/a$b<",
        "Ll/n<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll/m$b;


# direct methods
.method public constructor <init>(Ll/m$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/m$b$a;->a:Ll/m$b;

    return-void
.end method


# virtual methods
.method public final create()Ljava/lang/Object;
    .locals 9

    new-instance v8, Ll/n;

    iget-object p0, p0, Ll/m$b$a;->a:Ll/m$b;

    iget-object v1, p0, Ll/m$b;->a:Lo/a;

    iget-object v2, p0, Ll/m$b;->b:Lo/a;

    iget-object v3, p0, Ll/m$b;->c:Lo/a;

    iget-object v4, p0, Ll/m$b;->d:Lo/a;

    iget-object v5, p0, Ll/m$b;->e:Ll/o;

    iget-object v6, p0, Ll/m$b;->f:Ll/r$a;

    iget-object v7, p0, Ll/m$b;->g:Lg0/a$c;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ll/n;-><init>(Lo/a;Lo/a;Lo/a;Lo/a;Ll/o;Ll/r$a;Lg0/a$c;)V

    return-object v8
.end method
