package io.left.meshim.services;

import io.left.meshim.activities.IActivity;
import io.left.meshim.models.ConversationSummary;
import io.left.meshim.models.Message;
import io.left.meshim.models.User;
import io.left.meshim.ActivityCallBacl;

interface IMeshIMService {
    // Service funcionality.

    void setForeground(in boolean value);


    // RightMesh funcionality.

    List<User> getOnlineUsers();

    void registerActivityCallback(in IActivity callback);

    void sendTextMessage(in User recipient, in String message);

    void showRightMeshSettings();


    // Database queries.

    List<ConversationSummary> fetchConversationSummaries();

    List<Message> fetchMessagesForUser(in User user);

    User fetchUserById(in int id);

    String getName(in ActivityCallBacl callBack);
}