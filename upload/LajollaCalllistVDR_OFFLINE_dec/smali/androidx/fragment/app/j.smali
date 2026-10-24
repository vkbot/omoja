.class public final Landroidx/fragment/app/j;
.super Landroidx/fragment/app/i;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Z

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/g1;Ld0/c;ZZ)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/g1;Ld0/c;)V

    iget-object p2, p1, Landroidx/fragment/app/g1;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p1, p1, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/t;->j()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p2, v2

    :goto_0
    iput-object p2, p0, Landroidx/fragment/app/j;->c:Ljava/lang/Object;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iput-boolean v1, p0, Landroidx/fragment/app/j;->d:Z

    goto :goto_3

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/t;->k()Ljava/lang/Object;

    move-result-object p2

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p2, v2

    :goto_2
    iput-object p2, p0, Landroidx/fragment/app/j;->c:Ljava/lang/Object;

    iput-boolean v1, p0, Landroidx/fragment/app/j;->d:Z

    :goto_3
    if-eqz p4, :cond_5

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/t;->l()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/j;->e:Ljava/lang/Object;

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Landroidx/fragment/app/j;->e:Ljava/lang/Object;

    goto :goto_4

    :cond_5
    iput-object v2, p0, Landroidx/fragment/app/j;->e:Ljava/lang/Object;

    :goto_4
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Landroidx/fragment/app/b1;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Landroidx/fragment/app/u0;->a:Landroidx/fragment/app/z0;

    instance-of v1, p1, Landroid/transition/Transition;

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Landroidx/fragment/app/u0;->b:Landroidx/fragment/app/b1;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/fragment/app/b1;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transition "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for fragment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/i;->a:Landroidx/fragment/app/g1;

    iget-object p0, p0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/t;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
