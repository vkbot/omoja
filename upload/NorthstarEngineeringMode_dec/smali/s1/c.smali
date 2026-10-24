.class public final Ls1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/location/GpsActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/location/GpsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/c;->a:Lcom/mega/engineeringmode/function/location/GpsActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    const-string p1, "BDRequest"

    iget-object p0, p0, Ls1/c;->a:Lcom/mega/engineeringmode/function/location/GpsActivity;

    invoke-static {p0, p1}, Lcom/mega/engineeringmode/function/location/GpsActivity;->n(Lcom/mega/engineeringmode/function/location/GpsActivity;Ljava/lang/String;)V

    return-void
.end method
