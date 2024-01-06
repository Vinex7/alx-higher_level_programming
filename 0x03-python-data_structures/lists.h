#ifndef LISTS_H
#define LISTS_H

#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

/**
 * struct listint_s - singly linked list
 * @n: integer value stored in the node
 * @next: points to the next node in the list
 *
 * Description: Defines a singly linked list node structure
 * for use in Holberton project.
 */
typedef struct listint_s
{
    int n;              /* Integer value stored in the node */
    struct listint_s *next; /* Points to the next node in the list */
} listint_t;

size_t print_listint(const listint_t *h);
listint_t *add_nodeint_end(listint_t **head, const int n);
void free_listint(listint_t *head);

/**
 * reverse_listint - Reverses a singly linked list.
 * @head: Pointer to the head of the linked list.
 *
 * Return: void.
 */
void reverse_listint(listint_t **head);

/**
 * is_palindrome - Checks if a singly linked list is a palindrome.
 * @head: Pointer to the head of the linked list.
 *
 * Return: 1 if the linked list is a palindrome, 0 otherwise.
 */
int is_palindrome(listint_t **head);

#endif /* LISTS_H */
