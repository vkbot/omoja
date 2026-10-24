.class public final Lo0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo0/a;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lo0/a;

    invoke-direct {v0, p1}, Lo0/a;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lo0/b;->a:Lo0/a;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "editText cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
