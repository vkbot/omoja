.class public abstract Lm0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/a;


# static fields
.field public static final l:Lm0/e;

.field public static final m:Lm0/e;

.field public static final n:Lm0/e;

.field public static final o:Lm0/e;

.field public static final p:Lm0/e;

.field public static final q:Lm0/e;


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Lf0/g;

.field public f:Z

.field public final g:F

.field public h:J

.field public final i:F

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lm0/e;

    const-string v1, "scaleX"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lm0/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm0/h;->l:Lm0/e;

    new-instance v0, Lm0/e;

    const-string v1, "scaleY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lm0/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm0/h;->m:Lm0/e;

    new-instance v0, Lm0/e;

    const-string v1, "rotation"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lm0/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm0/h;->n:Lm0/e;

    new-instance v0, Lm0/e;

    const-string v1, "rotationX"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lm0/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm0/h;->o:Lm0/e;

    new-instance v0, Lm0/e;

    const-string v1, "rotationY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lm0/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm0/h;->p:Lm0/e;

    new-instance v0, Lm0/e;

    const-string v1, "alpha"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lm0/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm0/h;->q:Lm0/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lu1/i;->q:Lu1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lm0/h;->a:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lm0/h;->b:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lm0/h;->c:Z

    iput-boolean v1, p0, Lm0/h;->f:Z

    const v1, -0x800001

    iput v1, p0, Lm0/h;->g:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lm0/h;->h:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lm0/h;->j:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lm0/h;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Lm0/h;->d:Ljava/lang/Object;

    iput-object v0, p0, Lm0/h;->e:Lf0/g;

    sget-object p1, Lm0/h;->n:Lm0/e;

    if-eq v0, p1, :cond_4

    sget-object p1, Lm0/h;->o:Lm0/e;

    if-eq v0, p1, :cond_4

    sget-object p1, Lm0/h;->p:Lm0/e;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lm0/h;->q:Lm0/e;

    const/high16 v1, 0x3b800000    # 0.00390625f

    if-ne v0, p1, :cond_1

    iput v1, p0, Lm0/h;->i:F

    goto :goto_2

    :cond_1
    sget-object p1, Lm0/h;->l:Lm0/e;

    if-eq v0, p1, :cond_3

    sget-object p1, Lm0/h;->m:Lm0/e;

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lm0/h;->i:F

    goto :goto_2

    :cond_3
    :goto_0
    iput v1, p0, Lm0/h;->i:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lm0/h;->i:F

    :goto_2
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    iget-object v0, p0, Lm0/h;->e:Lf0/g;

    iget-object v1, p0, Lm0/h;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lf0/g;->d(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lm0/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, La/a;->i(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :cond_2
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method
