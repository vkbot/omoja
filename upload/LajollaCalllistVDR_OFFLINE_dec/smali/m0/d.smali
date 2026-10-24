.class public final Lm0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Lk/j;

.field public final b:Ljava/util/ArrayList;

.field public final c:Landroidx/appcompat/view/menu/i;

.field public d:Lm0/c;

.field public e:J

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lm0/d;->g:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk/j;

    invoke-direct {v0}, Lk/j;-><init>()V

    iput-object v0, p0, Lm0/d;->a:Lk/j;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm0/d;->b:Ljava/util/ArrayList;

    new-instance v0, Landroidx/appcompat/view/menu/i;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/view/menu/i;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lm0/d;->c:Landroidx/appcompat/view/menu/i;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lm0/d;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm0/d;->f:Z

    return-void
.end method
