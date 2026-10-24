.class public abstract Lr0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final endVersion:I

.field public final startVersion:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr0/a;->startVersion:I

    iput p2, p0, Lr0/a;->endVersion:I

    return-void
.end method


# virtual methods
.method public abstract migrate(Lt0/a;)V
.end method
