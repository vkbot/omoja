.class public final synthetic Lm5/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/w3c/dom/Node;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lorg/w3c/dom/Node;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/n0;->a:Lorg/w3c/dom/Node;

    iput-boolean p2, p0, Lm5/n0;->b:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lm5/o0$a;

    iget-object v0, p0, Lm5/n0;->a:Lorg/w3c/dom/Node;

    iget-boolean p0, p0, Lm5/n0;->b:Z

    invoke-static {p1, v0, p0}, Lm5/o0;->I(Lm5/o0$a;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method
