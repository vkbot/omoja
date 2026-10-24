.class public final Ll/m$b;
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
    name = "b"
.end annotation


# instance fields
.field public final a:Lo/a;

.field public final b:Lo/a;

.field public final c:Lo/a;

.field public final d:Lo/a;

.field public final e:Ll/o;

.field public final f:Ll/r$a;

.field public final g:Lg0/a$c;


# direct methods
.method public constructor <init>(Lo/a;Lo/a;Lo/a;Lo/a;Ll/o;Ll/r$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll/m$b$a;

    invoke-direct {v0, p0}, Ll/m$b$a;-><init>(Ll/m$b;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lg0/a;->a(ILg0/a$b;)Lg0/a$c;

    move-result-object v0

    iput-object v0, p0, Ll/m$b;->g:Lg0/a$c;

    iput-object p1, p0, Ll/m$b;->a:Lo/a;

    iput-object p2, p0, Ll/m$b;->b:Lo/a;

    iput-object p3, p0, Ll/m$b;->c:Lo/a;

    iput-object p4, p0, Ll/m$b;->d:Lo/a;

    iput-object p5, p0, Ll/m$b;->e:Ll/o;

    iput-object p6, p0, Ll/m$b;->f:Ll/r$a;

    return-void
.end method
