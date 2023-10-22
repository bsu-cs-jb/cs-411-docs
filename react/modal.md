---
title: Modal
layout: default
parent: React Native
nav_order: 10
---
# {{ page.parent }}: {{ page.title }}

- [Modal Demo Repo](https://github.com/bsu-cs-jb/demo-modal)

## Modal demo, maybe

[Modal Demo Project]({{ site.baseurl}}/demos/modal/)

<iframe width=460 height=910 src="{{ site.baseurl}}/demos/modal/">
</iframe>


## Code for the demo

[`ModalDemo.tsx`](https://github.com/bsu-cs-jb/demo-modal/blob/main/ModalDemo.tsx)
```react
{% raw %}
import { StatusBar } from "expo-status-bar";
import { ScrollView, StyleSheet, View } from "react-native";
import { BigButton, FlexFill, LabelText, TitleText } from "./Shared";
import { useState } from "react";
import sharedStyles from "./styles";
import { EditWatchlistModal } from "./EditWatchlistModal";
import { genid, log, range } from "./utils";

interface Entry {
  id: string;
  name: string;
}

interface EntryViewProps {
  entry: Entry;
  onDelete: (entry: Entry) => void;
  onEdit: (entry: Entry) => void;
  onView: (entry: Entry) => void;
}

function EntryView({ entry, onDelete, onEdit, onView }: EntryViewProps) {
  return (
    <View style={sharedStyles.horzContainer}>
      <LabelText>{entry.name}</LabelText>
      <FlexFill />
      <BigButton title="Del" onPress={() => onDelete(entry)} />
      <BigButton title="Edit" onPress={() => onEdit(entry)} />
      <BigButton title="View" onPress={() => onView(entry)} />
    </View>
  );
}

export default function ModalDemo() {
  const [entries, setEntries] = useState([
    {
      id: genid(),
      name: "Chester",
    },
  ]);
  const [modalVisible, setModalVisible] = useState(false);
  const [editName, setEditName] = useState("");
  const [addOrEdit, setAddOrEdit] = useState<"add" | "edit">("add");
  const [editId, setEditId] = useState<string | null>(null);

  const dismissModal = () => {
    setModalVisible(false);
    setEditId(null);
    setEditName("");
  };

  const handleSave = (name: string) => {
    dismissModal();
    if (addOrEdit === "add") {
      setEntries([
        ...entries,
        {
          id: genid(),
          name,
        },
      ]);
    } else if (addOrEdit === "edit") {
      setEntries(
        entries.map((entry) =>
          entry.id === editId ? { ...entry, name } : entry,
        ),
      );
    }
  };
  const handleCancel = () => {
    dismissModal();
  };

  const handleAddEntry = () => {
    setModalVisible(true);
    setAddOrEdit("add");
  };

  const handleDelete = (entry: Entry) => {
    log(`handleDelete(${entry.name}) ${entry.id}`);
    setEntries(entries.filter((e) => e.id !== entry.id));
  };

  const handleEdit = (entry: Entry) => {
    log(`handleEdit(${entry.name})`);
    setAddOrEdit("edit");
    setEditId(entry.id);
    setEditName(entry.name);
    setModalVisible(true);
  };

  const handleView = (entry: Entry) => {
    log(`handleView(${entry.name})`);
  };

  return (
    <View style={styles.container}>
      <EditWatchlistModal
        visible={modalVisible}
        name={editName}
        onSave={handleSave}
        onCancel={handleCancel}
      />
      <TitleText>Top iPhone Title</TitleText>
      <ScrollView
        style={{ width: "100%" }}
        contentContainerStyle={{ alignItems: "flex-start", gap: 5 }}
      >
        {entries.map((entry) => (
          <EntryView
            key={entry.id}
            entry={entry}
            onDelete={handleDelete}
            onEdit={handleEdit}
            onView={handleView}
          />
        ))}
      </ScrollView>
      <BigButton title="Add entry" onPress={handleAddEntry} />
      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fdf",
    alignItems: "center",
    paddingTop: 35,
    paddingBottom: 20,
    paddingHorizontal: 10,
    gap: 8,
  },
});
{% endraw %}
```

[`EditWatchlistModal.tsx`](https://github.com/bsu-cs-jb/demo-modal/blob/main/EditWatchlistModal.tsx)
```react
{% raw %}
import React, { useEffect, useState } from "react";
import { BigButton, FlexFill, LabelText, TitleText } from "./Shared";
import sharedStyles from "./styles";
import { Modal, SafeAreaView, View, TextInput, StyleSheet } from "react-native";

interface EditWatchlistModalProps {
  visible: boolean;
  name?: string;
  onSave: (name: string) => void;
  onCancel: () => void;
}

const MAX_NAME_LENGTH = 20;

export function EditWatchlistModal({
  visible,
  name,
  onSave,
  onCancel,
}: EditWatchlistModalProps) {
  const [newName, setNewName] = useState(name ?? "");
  const [errorMessage, setErrorMessage] = useState<string | undefined>();
  useEffect(() => {
    if (name !== undefined) {
      setNewName(name);
    } else {
      setNewName("");
    }
    setErrorMessage("");
  }, [name]);

  const clearState = () => {
    setNewName("");
    setErrorMessage("");
  };

  const handleCancel = () => {
    clearState();
    onCancel();
  };

  const handleSave = () => {
    // validate the input
    if (validateInput(newName)) {
      clearState();
      onSave(newName.trim());
    }
  };

  const validateInput = (name: string) => {
    if (!name.trim()) {
      setErrorMessage("Please enter a name.");
      return false;
    } else if (name.length >= MAX_NAME_LENGTH) {
      // clear the error message
      setErrorMessage(`Name can only be ${MAX_NAME_LENGTH} characters.`);
    } else {
      // clear the error message
      setErrorMessage(undefined);
    }
    return true;
  };

  const handleNameChange = (text: string) => {
    // always set the newName, even if the input fails validation
    setNewName(text);
    // (optional) validate the input as the user is typing
    validateInput(text);
  };

  return (
    <Modal visible={visible} transparent={true} animationType="slide">
      <SafeAreaView style={sharedStyles.modalTop}>
        <View style={sharedStyles.modalContainer}>
          <TitleText>Add Watchlist</TitleText>
          {errorMessage && (
            <LabelText style={styles.errorText}>{errorMessage}</LabelText>
          )}
          <View style={sharedStyles.formContainer}>
            <View style={sharedStyles.formRow}>
              <View style={[sharedStyles.formColumn, { flex: 0.35 }]}>
                <LabelText>Name:</LabelText>
              </View>
              <View style={sharedStyles.formColumn}>
                <TextInput
                  style={sharedStyles.input}
                  value={newName}
                  onChangeText={handleNameChange}
                  autoFocus={true}
                  maxLength={MAX_NAME_LENGTH}
                  selectTextOnFocus={true}
                  onSubmitEditing={handleSave}
                />
              </View>
            </View>
          </View>
          <View style={sharedStyles.horzContainer}>
            <BigButton title="Cancel" onPress={handleCancel} />
            <FlexFill />
            <BigButton title="Save" onPress={handleSave} />
          </View>
        </View>
      </SafeAreaView>
    </Modal>
  );
}

const styles = StyleSheet.create({
  errorText: {
    color: "red",
  },
});
{% endraw %}
```
