.class public final Ln0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln0/a;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Ln0/a;

    invoke-direct {v0, p1}, Ln0/a;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Ln0/b;->a:Ln0/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "editText cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
