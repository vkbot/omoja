.class public final Lcom/callisto/auto/gatherer/monitor/firewall/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# virtual methods
.method public final deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    new-instance p1, Lcom/callisto/auto/gatherer/model/OutPortBean;

    invoke-direct {p1}, Lcom/callisto/auto/gatherer/model/OutPortBean;-><init>()V

    const-string p2, "port"

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/callisto/auto/gatherer/model/OutPortBean;->setPort(I)V

    const-string p2, "state"

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/callisto/auto/gatherer/model/OutPortBean;->setState(I)V

    return-object p1
.end method
