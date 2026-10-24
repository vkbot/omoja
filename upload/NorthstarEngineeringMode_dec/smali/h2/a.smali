.class public final Lh2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh2/a$a;
    }
.end annotation


# instance fields
.field public final a:Lh2/a$a;

.field public final b:I


# direct methods
.method public constructor <init>(Lh2/a$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2/a;->a:Lh2/a$a;

    iput p2, p0, Lh2/a;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lh2/a;->a:Lh2/a$a;

    iget p0, p0, Lh2/a;->b:I

    invoke-interface {p1, p0}, Lh2/a$a;->a(I)V

    return-void
.end method
